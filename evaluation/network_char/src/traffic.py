"""Open-loop offered load and windowed useful delivery using the same flit engine.

Every endpoint has a periodic packet source with an independently random phase.
Attempts continue while blocked: an unbounded source FIFO is represented by its
arrival sequence number, without allocating a graph for each queued packet.
Only complete, immutable flow templates are cached; every injected packet gets
fresh operations and is arbitrated by Simulator's normal elastic machinery.
"""
from pathlib import Path
import sys
sys.path.insert(0, str(Path(__file__).resolve().parents[3]))
from collections import deque
import hashlib
import json
import math
import random
import time
import gc
import platform
import subprocess
import sys
import fcntl
from dataclasses import asdict,replace
from pathlib import Path
from concurrent.futures import ProcessPoolExecutor, as_completed

from evaluation.golden_model.router import Config
from evaluation.golden_model.router import Operation, Packet, Program, Transmission, compile_packet,leaf_xy,link
from evaluation.golden_model.router import Simulator


def flow_pattern(endpoints, fanout, seed):
    rng=random.Random(seed)
    if fanout==1:
        destinations=list(range(endpoints))
        while True:
            rng.shuffle(destinations)
            if all(s!=d for s,d in enumerate(destinations)):break
        flows=[(d,) for d in destinations]
    else:
        if not 1<fanout<endpoints:raise ValueError('Invalid multicast fanout')
        flows=[tuple(sorted(d+(d>=s) for d in rng.sample(range(endpoints-1),fanout)))
               for s in range(endpoints)]
    phases=[rng.random() for _ in range(endpoints)]
    return flows,phases


def clone_program(template, packet):
    operations=[Operation(packet.packet_id,o.node,o.port,o.index,o.word,o.cls,
                          o.multicast,dict(o.feature),requested=packet.release_tick)
                for o in template.operations]
    mapping=dict(zip(template.operations,operations))
    for original,copy in zip(template.operations,operations):
        copy.previous=mapping.get(original.previous)
        copy.outputs=[Transmission(t.output,mapping.get(t.child),t.word,t.physical,
                                   t.destination,t.payload_index) for t in original.outputs]
    return Program(packet,template.topology,operations,[mapping[o] for o in template.injected],
                   template.injection_link,template.route_bits)


class TrafficSimulator(Simulator):
    def __init__(self,topology,config,luts,flows,phases,offered_gbps,warmup_ps,window_ps,
                 mode='unicast',payload_flits=8,bins=8,active_sources=None):
        super().__init__(topology,config,luts)
        self.flows=flows;self.mode=mode;self.endpoints=len(flows)
        self.active_sources=tuple(range(self.endpoints) if active_sources is None else active_sources)
        self.active_source_set=frozenset(self.active_sources)
        if (not self.active_sources or len(self.active_source_set)!=len(self.active_sources) or
                any(s not in range(self.endpoints) for s in self.active_sources)):
            raise ValueError('Invalid active-source set')
        if self.endpoints!=4**config.depth:raise ValueError('All endpoints must be sources')
        if mode not in ('unicast','multicast','repeated_unicast'):raise ValueError('Unknown traffic mode')
        if topology!='Tree' and mode!='unicast':raise ValueError('Mesh has no multicast')
        fanout=len(flows[0])
        if any(len(ds)!=fanout for ds in flows):raise ValueError('Use a fixed fanout')
        if offered_gbps<=0 or min(warmup_ps,window_ps)<=0:raise ValueError('Positive rate/window required')
        self.payload=tuple((i*2654435761+17)&0x0fffffff for i in range(payload_flits))
        self.logical_bits=fanout*payload_flits*config.useful_bits_per_flit
        self.period=self.logical_bits*1000./offered_gbps
        self.phases=[phase*self.period for phase in phases]
        self.warmup=warmup_ps;self.window=window_ps;self.end=warmup_ps+window_ps
        self.next_sequence=[0]*self.endpoints
        self.remaining=[deque() for _ in flows]
        self.templates={};self.parameter_cache={};self.mid=0
        self.mesh_parameters=(config.sync_stages*config.clock_ps,config.clock_ps,
                              32*config.sync_router_fj_bit)
        self.mesh_after_capture=((config.sync_stages-1)*config.clock_ps,config.clock_ps,
                                 32*config.sync_router_fj_bit)
        self.delivered_bins=[0]*bins;self.delivered_total=0;self.issued_bits=0
        self.completed_packets=0;self.peak_live_packets=0
        for source in self.active_sources:
            phase=self.phases[source]
            if phase<self.end:self.at(phase,self.start_source,source)

    def parameters(self,op):
        if not self.async_:return self.mesh_parameters if op.port=='local' else self.mesh_after_capture
        key=(op.cls,op.port,op.multicast,tuple(t.output for t in op.outputs),
             op.feature.get('phase'),op.feature.get('z'),op.feature.get('s'))
        if key not in self.parameter_cache:self.parameter_cache[key]=super().parameters(op)
        return self.parameter_cache[key]

    def start_source(self,source):
        if self.now>=self.end:return
        if not self.remaining[source]:
            attempted_at=self.phases[source]+self.next_sequence[source]*self.period
            if attempted_at>self.now+1e-7:
                if attempted_at<self.end:self.at(attempted_at,self.start_source,source)
                return
            self.next_sequence[source]+=1
            ds=self.flows[source]
            self.remaining[source].extend([(d,) for d in ds] if self.mode=='repeated_unicast' else [ds])
        ds=self.remaining[source].popleft()
        kind='multicast' if self.mode=='multicast' else 'unicast'
        packet=Packet(self.mid,source,ds,self.payload,kind,self.now)
        self.mid+=1
        key=(source,ds)
        if key not in self.templates:self.templates[key]=compile_packet(packet,self.topology,self.config)
        self.add_program(clone_program(self.templates[key],packet))
        self.issued_bits+=len(ds)*len(self.payload)*self.config.useful_bits_per_flit
        self.peak_live_packets=max(self.peak_live_packets,len(self.programs))

    def source_released(self,program):
        self.start_source(program.packet.source_leaf)

    def add_energy(self,op,component,value):
        # This experiment measures delivery, not energy. Avoid retaining per-packet
        # energy records; timing and arbitration are identical to Simulator.
        pass

    def deliver(self,op,tr,callback):
        super().deliver(op,tr,callback)
        if tr.payload_index is None:return
        bits=self.config.useful_bits_per_flit
        self.delivered_total+=bits
        if self.warmup<=self.now<self.end:
            index=min(len(self.delivered_bins)-1,
                      int((self.now-self.warmup)/self.window*len(self.delivered_bins)))
            self.delivered_bins[index]+=bits
        p=self.programs[op.message].packet
        if len(self.deliveries[op.message])==len(p.destinations)*len(p.payload):
            self.completed_packets+=1
            del self.deliveries[op.message]
            del self.programs[op.message]

    def attempts_before(self,t):
        # Strictly before t, matching the half-open measurement interval.
        return [max(0,math.ceil((t-phase)/self.period)) if s in self.active_source_set else 0
                for s,phase in enumerate(self.phases)]

    def measure(self):
        started=time.monotonic()
        self.advance(self.end)  # No drain: later deliveries cannot enter this window.
        before=self.attempts_before(self.warmup);after=self.attempts_before(self.end)
        offered_messages=sum(b-a for a,b in zip(before,after))
        offered_bits=offered_messages*self.logical_bits
        delivered_bits=sum(self.delivered_bins)
        factor=1000./(self.window*self.endpoints)
        half=len(self.delivered_bins)//2
        first=sum(self.delivered_bins[:half])/half
        last=sum(self.delivered_bins[half:])/(len(self.delivered_bins)-half)
        drift=abs(last-first)/((first+last)/2) if first+last else 0.
        if self.delivered_total>self.issued_bits:raise AssertionError('Payload conservation failed')
        return dict(offered_gbps=offered_bits*factor,accepted_gbps=delivered_bits*factor,
                    offered_messages=offered_messages,offered_payload_copy_bits=offered_bits,
                    delivered_payload_copy_bits=delivered_bits,delivered_bits_by_bin=self.delivered_bins,
                    bin_accepted_gbps=[v*factor*len(self.delivered_bins) for v in self.delivered_bins],
                    half_window_relative_drift=drift,
                    source_backlog_messages=sum(a-b for a,b in zip(after,self.next_sequence)),
                    active_packets_at_stop=len(self.programs),completed_packets=self.completed_packets,
                    issued_payload_copy_bits=self.issued_bits,delivered_bits_since_start=self.delivered_total,
                    outstanding_payload_copy_bits=self.issued_bits-self.delivered_total,
                    endpoint_count=self.endpoints,payload_flits=len(self.payload),fanout=len(self.flows[0]),
                    warmup_ps=self.warmup,measurement_ps=self.window,events=self.total_events,
                    peak_live_packets=self.peak_live_packets,wall_seconds=time.monotonic()-started)


def traffic_point(config,luts,topology,mode,offered_gbps,warmup_ps,window_ps,seed,fanout=1):
    flows,phases=flow_pattern(4**config.depth,fanout,seed)
    if config.traffic_backend=='native_mesh' and topology=='Mesh':
        if mode!='unicast' or fanout!=1:raise ValueError('Native mesh is unicast only')
        result=native_mesh(config,flows,phases,offered_gbps,warmup_ps,window_ps)
    else:
        sim=TrafficSimulator(topology,config,luts,flows,phases,offered_gbps,warmup_ps,window_ps,mode)
        result=sim.measure()
    result.update(topology=topology,mode=mode,target_offered_gbps=offered_gbps,seed=seed,
                  runtime=platform.python_implementation()+' '+platform.python_version(),
                  traffic_sha256=hashlib.sha256(json.dumps([flows,phases]).encode()).hexdigest())
    return result


def mesh_executable():
    source=Path(__file__).with_name('traffic_mesh.cpp')
    signature=hashlib.sha256(source.read_bytes()).hexdigest()[:20]
    executable=Path('/tmp')/('ferroma-noc-mesh-'+signature)
    with executable.with_suffix('.lock').open('w') as lock:
        fcntl.flock(lock,fcntl.LOCK_EX)
        if not executable.exists():
            subprocess.run(['g++','-std=c++17','-O3','-ffp-contract=off',str(source),'-o',str(executable)],check=True)
    return executable


def native_mesh(config,flows,phases,offered_gbps,warmup_ps,window_ps):
    executable=mesh_executable();n=len(flows);bins=8;payload=8;logical_bits=payload*28
    source_sha=hashlib.sha256(Path(__file__).with_name('traffic_mesh.cpp').read_bytes()).hexdigest()
    if not executable.name.endswith(source_sha[:20]):raise RuntimeError('Mesh source changed during compilation; rerun the point')
    period=logical_bits*1000./offered_gbps
    physical=link(config.tile_um,False,config)
    header=[config.side,payload,config.sync_lanes,config.sync_queue_per_lane+config.sync_stages,
            config.clock_ps,config.sync_stages,physical['delay_ps'],
            physical['sections']*config.clock_ps,warmup_ps,window_ps,period,bins]
    lines=[' '.join(map(str,header))]
    for s,ds in enumerate(flows):
        lines.append(' '.join(map(str,(*leaf_xy(s,config.depth),*leaf_xy(ds[0],config.depth),phases[s]*period))))
    start=time.monotonic()
    result=json.loads(subprocess.run([str(executable)],input='\n'.join(lines)+'\n',text=True,
                                     capture_output=True,check=True).stdout)
    stop=warmup_ps+window_ps
    before=[max(0,math.ceil((warmup_ps-phase*period)/period)) for phase in phases]
    after=[max(0,math.ceil((stop-phase*period)/period)) for phase in phases]
    messages=sum(b-a for a,b in zip(before,after));bits=messages*logical_bits
    delivered=sum(result['delivered_bits_by_bin']);factor=1000./(window_ps*n)
    a=sum(result['delivered_bits_by_bin'][:4]);b=sum(result['delivered_bits_by_bin'][4:])
    result.update(offered_gbps=bits*factor,accepted_gbps=delivered*factor,offered_messages=messages,
        offered_payload_copy_bits=bits,delivered_payload_copy_bits=delivered,
        bin_accepted_gbps=[v*factor*bins for v in result['delivered_bits_by_bin']],
        half_window_relative_drift=abs(b-a)/((a+b)/2) if a+b else 0.,
        source_backlog_messages=sum(a-b for a,b in zip(after,result.pop('started_messages_by_source'))),
        outstanding_payload_copy_bits=result['issued_payload_copy_bits']-result['delivered_bits_since_start'],
        endpoint_count=n,payload_flits=payload,fanout=1,warmup_ps=warmup_ps,measurement_ps=window_ps,
        wall_seconds=time.monotonic()-start,backend='native_mesh',
        backend_sha256=source_sha)
    return result


def initialize_worker(config,luts):
    global WORKER_CONFIG,WORKER_LUTS
    WORKER_CONFIG=config;WORKER_LUTS=luts


def run_point(spec):
    if WORKER_CONFIG.traffic_python:
        completed=subprocess.run([WORKER_CONFIG.traffic_python,str(Path(__file__).resolve()),'--worker'],
            input=json.dumps(dict(config=asdict(WORKER_CONFIG),luts=WORKER_LUTS,spec=spec)),
            text=True,capture_output=True,check=True)
        return json.loads(completed.stdout)
    # Large immutable packet DAGs otherwise trigger repeated whole-graph GC
    # scans. Retired packets are released by reference counting; collect the
    # simulator/callback cycles once the point is complete.
    enabled=gc.isenabled();gc.disable()
    try:
        return traffic_point(WORKER_CONFIG,WORKER_LUTS,**spec)
    finally:
        gc.collect()
        if enabled:gc.enable()


def run_sweep(config,luts,specifications):
    results=[]
    with ProcessPoolExecutor(max_workers=config.traffic_workers,
                             initializer=initialize_worker,initargs=(config,luts)) as pool:
        futures=[pool.submit(run_point,spec) for spec in specifications]
        for future in as_completed(futures):
            row=future.result();results.append(row)
            print('traffic',row['topology'],row['mode'],'load',row['target_offered_gbps'],
                  'accepted',round(row['accepted_gbps'],7),'drift',round(row['half_window_relative_drift'],3),
                  'seconds',round(row['wall_seconds'],1),'points',len(results),'/',len(futures),flush=True)
    return sorted(results,key=lambda r:(r['mode'],r['topology'],r['target_offered_gbps'],r['seed']))


def cluster_point(config,luts,lambda_level,offered_gbps):
    """One representative of independent full-broadcast subtrees, rho=1.

    Every subtree has one active source at its first leaf, as in the original
    heatmap. Identical copies have disjoint router/link resources. Simulating
    one copy gives exactly the network rate per destination endpoint.
    """
    c=replace(config,depth=lambda_level+1)
    endpoints=4**c.depth;destinations=tuple(range(endpoints))
    sim=TrafficSimulator('Tree',c,luts,[destinations]*endpoints,[.137]*endpoints,
        offered_gbps*endpoints,224e6*config.traffic_duration_scale,
        2240e6*config.traffic_duration_scale,mode='multicast',active_sources=(0,))
    result=sim.measure()
    copies=4**config.depth//endpoints
    result.update(x=offered_gbps,y=lambda_level,lambda_level=lambda_level,
        topology='Tree',series='Multicast',rho=1.,target_offered_gbps=offered_gbps,
        active_sources_per_subtree=1,independent_subtrees=copies,
        full_network_endpoints=4**config.depth,
        full_network_delivered_payload_copy_bits=result['delivered_payload_copy_bits']*copies,
        full_network_offered_payload_copy_bits=result['offered_payload_copy_bits']*copies,
        source_in_subtree=0,seed=config.seed,status='ok',
        runtime=platform.python_implementation()+' '+platform.python_version())
    return result


def run_cluster_point(spec):
    if WORKER_CONFIG.traffic_python:
        completed=subprocess.run([WORKER_CONFIG.traffic_python,str(Path(__file__).resolve()),'--cluster-worker'],
            input=json.dumps(dict(config=asdict(WORKER_CONFIG),luts=WORKER_LUTS,spec=spec)),
            text=True,capture_output=True,check=True)
        return json.loads(completed.stdout)
    enabled=gc.isenabled();gc.disable()
    try:return cluster_point(WORKER_CONFIG,WORKER_LUTS,**spec)
    finally:
        gc.collect()
        if enabled:gc.enable()


def run_cluster_sweep(config,luts,loads):
    rows=[]
    with ProcessPoolExecutor(max_workers=config.traffic_workers,
                             initializer=initialize_worker,initargs=(config,luts)) as pool:
        # Start the largest subtrees early so workers finish more evenly.
        futures=[pool.submit(run_cluster_point,dict(lambda_level=lam,offered_gbps=rate))
                 for lam in reversed(range(config.depth)) for rate in loads]
        for future in as_completed(futures):
            row=future.result();rows.append(row)
            print('multicast heatmap lambda',row['lambda_level'],'load',row['x'],
                  'accepted',round(row['accepted_gbps'],7),
                  'drift',round(row['half_window_relative_drift'],4),
                  'seconds',round(row['wall_seconds'],1),'points',len(rows),'/',len(futures),flush=True)
    return sorted(rows,key=lambda r:(r['y'],r['x']))


if __name__=='__main__':
    if sys.argv[1:] not in (['--worker'],['--cluster-worker']):raise SystemExit('This module is invoked through experiments.py')
    request=json.load(sys.stdin)
    function=cluster_point if sys.argv[1]=='--cluster-worker' else traffic_point
    print(json.dumps(function(Config(**request['config']),request['luts'],**request['spec'])))
