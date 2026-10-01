#!/usr/bin/env python3
"""Reproducible NoC experiments producing PDF figures only.

Run from the repository root: python evaluation/network_char/run.py --simulate --experiments all
Measured tables are selected with --lut; no simulator source edit is needed.
"""
import argparse
from collections import Counter, defaultdict
from dataclasses import fields
import hashlib
import json
import math
from pathlib import Path
import random
import statistics
import sys
import time

from evaluation.golden_model.router import Config, load_luts, DEFAULT_LUT
ROOT = Path(__file__).resolve().parents[1]
from evaluation.golden_model.router import Packet, Tree, encode, xy_leaf, HardwareLimitError, FLIT_BITS, PAYLOAD_BITS
from evaluation.golden_model.router import Simulator, latency_phases
from .plotting import render
from .traffic import run_sweep,run_cluster_sweep
from evaluation.golden_model.router import ProtocolError


def digest(path):
    return hashlib.sha256(Path(path).read_bytes()).hexdigest()


def stats(values):
    n=len(values)
    mean=statistics.fmean(values) if n else None
    sd=statistics.stdev(values) if n>1 else 0.
    # Two-sided Student t 95% for ten independent trials; normal for other n.
    critical={2:12.706,3:4.303,4:3.182,5:2.776,6:2.571,7:2.447,8:2.365,9:2.306,10:2.262}.get(n,1.96)
    return dict(mean=mean, std=sd, ci95=critical*sd/math.sqrt(n) if n else None, n=n)


def deterministic_seed(config, experiment, point, trial=0):
    value=f'{config.seed}:{experiment}:{point}:{trial}'.encode()
    return int.from_bytes(hashlib.sha256(value).digest()[:8], 'big')


def packet(mid, source, destinations, count, kind='unicast'):
    return Packet(mid,source,tuple(destinations),tuple((i*2654435761+17)&0x0fffffff for i in range(count)),kind)


def run(topology, packets, config, luts, payload_only=False):
    simulation=Simulator(topology,config,luts)
    for p in packets:
        simulation.add(p,payload_only=payload_only)
    return simulation.run()


def summarize_group(results):
    useful=sum(r['useful_bits'] for r in results)
    delivered=sum(r['delivered_bits'] for r in results)
    energy={k:sum(r['energy'][k] for r in results) for k in ('router_fj','wire_fj','route_fj','payload_fj','total_fj')}
    last=max(results,key=lambda r:r['completion_ps'])
    release=min(r['release_ps'] for r in results)
    setup_complete=max(r['setup_complete_ps'] for r in results)
    first_payload=min(r['first_payload_ps'] for r in results)
    return dict(latency_ps=last['completion_ps']-release,
                **latency_phases(release,setup_complete,first_payload,last['completion_ps']),
                release_ps=release,setup_complete_ps=setup_complete,first_payload_ps=first_payload,
                wire_ps=last['wire_ps'],noc_ps=last['completion_ps']-release-last['wire_ps'],
                useful_bits=useful,delivered_bits=delivered,
                delivered_flits=sum(r['delivered_flits'] for r in results),
                delivered_control_flits=sum(r['delivered_control_flits'] for r in results),
                injected_bits=sum(r['injected_bits'] for r in results),
                route_flits=sum(r['route_flits'] for r in results),
                route_transport_bits=sum(r['route_transport_bits'] for r in results),
                **{k:val/delivered for k,val in energy.items()})


class Experiments:
    def __init__(self,config,luts,output):
        self.config=config;self.luts=luts;self.output=Path(output)
        self.output.mkdir(parents=True,exist_ok=True)
        calibrated=luts['metadata'].get('measurement_derived',False)
        measured=luts['metadata'].get('physical') or calibrated
        characterized_counter=luts['metadata'].get('multicast_counter_bits')
        counter_matches=characterized_counter==config.multicast_counter_bits
        characterized_termination=luts['metadata'].get('explicit_route_terminator')
        termination_matches=characterized_termination==config.explicit_route_terminator
        self.label=('MEASURED ROUTER / MODELED RC' if config.sync_energy_physical else
                    'MEASURED ROUTER / MODELED RC; SYNC ENERGY DUMMY') if measured else 'DUMMY / SOFTWARE VALIDATION'
        if measured and (not counter_matches or not termination_matches):
            measured_width=str(characterized_counter) if characterized_counter is not None else 'UNKNOWN'
            self.label=f'HYBRID / {config.multicast_counter_bits}-BIT COUNTER MODEL; {measured_width}-BIT ROUTER LUT'
            if not termination_matches:self.label+='; MODELED TERMINATION'
            if not config.sync_energy_physical:self.label+='; SYNC ENERGY DUMMY'
        elif not measured:
            self.label+=f'; {config.multicast_counter_bits}-BIT COUNTER MODEL'
        if calibrated:
            self.label='OPTIMISTIC SPICE-DERIVED MODEL; '+self.label
        coding='DUAL-RAIL RTZ' if config.sync_link_encoding=='dual_rail_4phase' else 'SINGLE-ENDED'
        self.label+=f'; MESH LINKS: {coding} (activity={config.sync_activity:g})'
        self.metadata=dict(config=config.metadata(),lut=luts['metadata'],label=self.label,
            plot_style=dict(name='SciencePlots',version='2.2.2',styles=['science','no-latex'],
                source='https://github.com/garrettj403/SciencePlots',
                sha256={name:digest(ROOT/'data'/name)
                        for name in ('science.mplstyle','no-latex.mplstyle')}),
            seed=config.seed,rc_label='MODELED RC: sensitivity assumption, not extracted PDK metal',
            mesh_link_scope='Dual-rail wire charging; physical RC for unsegmented links. Intermediate registers only above the clock timing budget. Receiver capture belongs to the five-stage router pipeline; no extra register at a short link boundary. Common-clock architectural model; dual-rail conversion/reset/control and mesochronous synchronization circuitry are uncharacterized.',
            timing_decomposition='Complete packet latency = noc_ps + wire_ps, without division by flit count. NoC is completion latency minus propagation along the last-delivered flit path; it includes packet service and flow control. Intrinsic router traversal remains a separate diagnostic, not the plotted NoC component.',
            parser_timing='Serial internal processing per route word, applied at parser readiness. It is not also charged as a frontend incoming-acceptance gap. Route admission reserves a finite input slot; parser ownership, operation ordering and downstream backpressure remain enforced. No separately characterized frontend route-acceptance delay is added.',
            lambda_definition='Router levels above lowest router; cluster leaves = 4**(lambda+1); lambda=3 gives 256 leaves at depth=6.',
            useful_bits='28 useful payload bits per 32-bit physical flit; bits [3:0] are reserved flags, bit 0 is tail and bit 1 marks a multicast-route flit. Physical transport energy includes all 32 bits.',
            multicast_counter=dict(modeled_bits=config.multicast_counter_bits,
                lut_characterized_bits=characterized_counter,
                measured_width_matches_model=bool(measured and counter_matches),
                active_prs_bits=8,
                assumption='Architectural counter width is configurable, default 9 bits (0..511). The characterized PRS/netlist retains 8 bits. Timing/energy of widening are uncharacterized; current-netlist area is reported separately.'),
            route_termination=dict(explicit_branch_terminator=config.explicit_route_terminator,
                lut_explicit_branch_terminator=characterized_termination,
                measured_behavior_matches_model=bool(measured and termination_matches),
                terminal_word='0x00000002: 28 zero route-data bits, multicast-route flag set, tail clear'),
            code_sha256={p:digest(ROOT/'src'/p) for p in ('traffic.py','traffic_mesh.cpp','experiments.py','plotting.py')},
            golden_model_sha256={p:digest(ROOT.parent/'golden_model'/p) for p in ('router.py',)})
        self.created=[]

    def save(self,name,rows,plot,**extra):
        path=self.output/name
        obj=dict(metadata={**self.metadata,**extra},plot=plot,rows=rows)
        render(path,obj)
        self.created.append(path.name)
        print('saved',path.name,flush=True)

    def unicast(self):
        c=self.config
        rows=[]
        for topology in ('Tree','Mesh'):
            for step in range(c.side):
                target=xy_leaf(step,0,c.depth)
                result=run(topology,[packet(0,0,[target],8)],c,self.luts)[0]
                row={k:v for k,v in result.items() if k not in ('destinations','energy')}
                row.update(result['energy'])
                row.update(x=step,target=target,tile_um=c.tile_um,step_tiles=step,destination_xy=[step,0])
                for key in ('router_fj','wire_fj'):
                    row[key+'_per_bit']=result['energy'][key]/row['delivered_bits']
                rows.append(row)
        common=dict(kind='unicast_panels',sweep='distance',scale=.001,xlabel='Distance (tile steps)',
                    note=f'Source (0, 0), destination (s, 0). Integer s = 0…{c.side-1}; s = 0 includes the local network path.')
        self.save('unicast_latency',rows,dict(common,
            components=['noc_ps','wire_ps'],
            component_labels=['Routers','Wires / links'],
            ylabel='Latency (ns)',title='Packet latency · one header + eight payload flits'),
            sweep='distance',distance_definition='Integer tile steps along the principal axis: source (0,0), destination (s,0).')
        self.save('unicast_energy',rows,dict(common,topologies=['Tree','Mesh'],
            components=['router_fj_per_bit','wire_fj_per_bit'],component_labels=['Routers','Wires'],
            ylabel='Energy (pJ / delivered bit)',title='Unicast energy'),
            sweep='distance',energy_definition='Total dynamic network energy divided by all 32-bit flits received at the destination: header, route/control if present, data and flags. One header plus eight data flits gives 9 × 32 = 288 bits. Count end-to-end delivery, not bit-hops; no leakage.',
            mesh_energy_scope='Mesh includes the configured per-router dynamic energy (default synthetic 20 fJ per input transport bit) and modeled dual-rail wire energy. Clock, idle switching and dual-rail interface circuitry are uncharacterized and excluded; not a physical total-energy measurement.')

    def congestion(self):
        self.accepted_throughput(multicast=False)

    def compression(self):
        rows=[];trials=[];c=self.config;n=4**c.depth;tree=Tree(c.depth)
        counts=sorted({min(n,k) for k in (1,4,16,64,128,256,512,1024,1536,2048,3072,4096)})
        for count in counts:
            samples=[];transport_samples=[]
            for trial in range(c.trials):
                seed=deterministic_seed(c,'compression',count,trial)
                destinations=sorted(random.Random(seed).sample(range(n),count))
                encoded=encode(tree,packet(0,0,destinations,1,'multicast'))
                route_flits=len(encoded)-2 # Remove one common setup header and one payload word.
                bits=28*route_flits # Exclude the common four reserved flag bits.
                transport_bits=32*route_flits
                samples.append(bits);transport_samples.append(transport_bits)
                trials.append(dict(destinations=count,trial=trial,seed=seed,bits=bits,
                                   representation_bits=bits,route_flits=route_flits,transport_bits=transport_bits,
                                   destination_leaves=destinations,route_words=encoded[1:-1]))
            x=100*count/n
            for series,representation,transport in (
                    ('Hierarchical encoding',samples,transport_samples),
                    ('FBS',[n]*c.trials,[32*math.ceil(n/28)]*c.trials),
                    ('EDL',[12*count]*c.trials,[32*math.ceil(12*count/28)]*c.trials)):
                rows.append(dict(x=x,series=series,destinations=count,**stats(representation),
                                 transport_bits_mean=statistics.fmean(transport),
                                 transport_bits_std=stats(transport)['std'],
                                 transport_bits_ci95=stats(transport)['ci95'],
                                 route_flits_mean=statistics.fmean(transport)/32))
        self.save('route_compression',rows,dict(kind='lines',xlabel=f'Destination-set size / {n} (%)',
                  ylabel='Route length (bits)',title='Route length over different encoding schemes',
                  scale=1.,yscale='linear'),
                  trials=trials,definition='Representation excludes the common four reserved flag bits: hierarchy uses 28 times real encoded route-flit count, including flush/padding; FBS is the destination bitmask and uses endpoint count; EDL is the explicit destination list and uses 12 bits per destination. Exclude fixed setup header and payload. Separate transport_bits_* fields include 32 physical bits per flit for every representation, with FBS and EDL packed into 28 data bits. Encoding does not imply hardware execution support.')

    def destinations(self,lam,rho,seed,cluster=0):
        size=4**(lam+1);start=cluster*size
        count=max(2,min(size,round(rho*size)))
        # A fixed random order yields nested sets as rho increases. Condition
        # its first two leaves on the requested LCA so every prefix has that LCA.
        rng=random.Random(seed); tree=Tree(self.config.depth)
        while True:
            order=list(range(start,start+size));rng.shuffle(order)
            if len(tree.multicast_start(order[:2]))==self.config.depth-lam-1:
                return tuple(sorted(order[:count]))

    def multicast_case(self,lam,rho,payload,seed):
        destinations=self.destinations(lam,rho,seed)
        result=[]
        for series,topology,kind in [('Tree','Tree','multicast'),('Repeated unicast','Tree','unicast')]:
            packets=[packet(i,0,[d],payload) for i,d in enumerate(destinations)] if kind=='unicast' else [packet(0,0,destinations,payload,'multicast')]
            row=dict(series=series,lambda_level=lam,rho_requested=rho,rho_actual=len(destinations)/4**(lam+1),
                     candidate_leaves=4**(lam+1),destination_count=len(destinations),payload_flits=payload,
                     seed=seed,source=0,destinations=list(destinations),status='ok',reason='')
            try:
                results=run(topology,packets,self.config,self.luts)
                row.update(summarize_group(results))
            except (HardwareLimitError,ProtocolError) as e:
                if topology!='Tree' or kind!='multicast':raise
                row.update(status='unsupported hardware route',reason=str(e))
            result.append(row)
        return result

    def multicast(self):
        c=self.config;local=min(3,c.depth-1);rows=[]
        for sweep,points in [('lca',list(range(c.depth))),('rho',[.05,.1,.2,.4,.6,.8,1.])]:
            for point in points:
                lam=point if sweep=='lca' else local;rho=.8 if sweep=='lca' else point
                trials=[]
                for trial in range(1):
                    seed=deterministic_seed(c,'multicast_'+sweep,lam,trial)
                    group=self.multicast_case(lam,rho,8,seed)
                    trials.extend(dict(r,trial=trial) for r in group)
                for series in ('Tree','Repeated unicast'):
                    group=[r for r in trials if r['series']==series]
                    row=dict(group[0],x=point if sweep=='lca' else group[0]['rho_actual'],sweep=sweep,
                             n=len(group),trials=group)
                    if any(r['status']!='ok' for r in group):
                        row.update(status='unsupported hardware route',
                                   reason='; '.join(sorted({r['reason'] for r in group if r['reason']})))
                    else:
                        for metric in ('latency_ps','setup_ps','payload_transfer_ps',
                                       'route_setup_only_ps','common_payload_ps','route_payload_overlap_ps','payload_after_setup_ps','noc_ps','wire_ps',
                                       'router_fj','wire_fj','route_fj','payload_fj','total_fj'):
                            values=stats([r[metric] for r in group])
                            row[metric]=values['mean'];row[metric+'_ci95']=values['ci95']
                    rows.append(row)
                print('multicast',sweep,point,'trials',len(trials)//2,flush=True)
        common=dict(kind='multicast_panels',scale=.001,yscale='linear',
                    note=f'ρ sweep: λ={local}; one nested destination ordering. One run per scheme and point, no uncertainty bars. LCA sweep: ρ≈0.8. Common payload: 8 flits.')
        self.save('multicast_latency',rows,dict(common,metric='latency_ps',
                  components=['route_setup_only_ps','common_payload_ps'],
                  component_labels=['Route setup before delivery','Common Payload'],
                  component_color_indices=[2,0],
                  ylabel='Latency (ns)',title='Multicast latency'),
                  local_lambda=local,local_candidate_leaves=4**(local+1),
                  layout='2 x 2 linear panels: repeated unicast above native multicast; LCA level left, destination density right. Independent Y limits; totals above and stacked components below.',
                  route_payload_decomposition='Two elapsed intervals sum to completion latency: Route setup before delivery runs from release to min(first payload arrival, last control retirement); Common Payload runs from that boundary to final payload arrival, including any overlap with remaining setup. Setup includes route transport and parsing. These are timeline intervals, not isolated parser/data circuit latencies; payload can already be active internally before its first endpoint delivery. Diagnostic overlap and payload-after-setup fields remain available and sum to common_payload_ps.')
        self.save('multicast_energy',rows,dict(common,metric='total_fj',
                  components=['route_fj','payload_fj'],
                  component_labels=['Route parsing + setup','Common Payload'],component_color_indices=[2,0],
                  ylabel='Energy (pJ / delivered bit)',title='Multicast energy'),
                  layout='2 x 2 linear panels: repeated unicast above native multicast; LCA level left, destination density right. Independent Y limits; totals above and stacked components below.',
                  route_payload_decomposition='route_fj includes dynamic router and wire energy of setup/header/route operations; payload_fj includes dynamic router and wire energy of every data copy. Both are divided by the same actual delivered-bit count and sum to total_fj. Route parsing + setup is not parser-only circuit energy.',
                  energy_components='Total dynamic network energy divided by all 32-bit flits received at all intended destinations, including any header/route/control and flag bits. The simulator counts endpoint output words, not just useful payload or data words. Native multicast consumes routing words internally, so only words actually reaching destinations enter the delivered-bit denominator. Internal parsing/forwarding energy remains included; no leakage.',
                  sampling='One uniformly shuffled cluster ordering conditioned on the first two leaves spanning the requested LCA; rho selects nested prefixes. Both schemes use the identical set; one run each.')

    def throughput(self):
        c=self.config
        loads=[.002*4**k for k in range(7)]+[float(8192*2)]
        rows=run_cluster_sweep(c,self.luts,loads)
        self.save('multicast_throughput',rows,dict(kind='heatmap',metric='accepted_gbps',
            xlabel='Offered injection load (Gb/s / endpoint)',ylabel='LCA level λ',
            colorbar_label='Accepted throughput (Gb/s / endpoint)',color_scale='log',
            title='Multicast throughput'),
            rho=1.,payload_flits=8,
            traffic='One continuously attempting source at the first leaf of each disjoint LCA subtree; full subtree broadcast. Source sets fixed across loads. Identical independent translated subtrees are simulated once and replicated analytically; all 4096 endpoints participate as destinations.',
            normalization='Both offered and accepted rates count 28 useful payload bits per intended destination copy, divided by duration and the number of endpoints. Energy figures separately count all bits of every endpoint-delivered word, including headers, control and flags.',
            window='Fixed 224 us warmup and 2240 us measurement for every point; source attempts continue under backpressure; no drain included. One deterministic run per cell; no fitted or clipped saturation curve.',
            layout='Discrete offered-load columns: seven geometric loads with factor 4, followed by an extra 16384 (=8192*2) Gb/s/endpoint overload point; logarithmic color normalization.')

    def accepted_throughput(self,multicast=False):
        c=self.config;specs=[]
        cases=([('Tree','multicast',[.0001,.0002,.0004,.0008,.0016,.0032,.0064,.0128],50e6,200e6),
                ('Tree','repeated_unicast',[.0001,.0002,.0004,.0008,.0016,.0032,.0064,.0128,.0256,.0512],50e6,200e6)]
               if multicast else
               [('Tree','unicast',[.0005,.001,.002,.004,.008,.016,.032,.064],20e6,50e6),
                ('Mesh','unicast',[.05,.1,.2,.4,.8,1.6,3.2,6.4,12.8,25.6],1e6,2e6)])
        for topology,mode,loads,warmup,window in cases:
            for load in loads:
                for trial in range(c.traffic_trials):
                    specs.append(dict(topology=topology,mode=mode,offered_gbps=load,
                        warmup_ps=warmup*c.traffic_duration_scale,window_ps=window*c.traffic_duration_scale,
                        seed=deterministic_seed(c,'continuous_multicast' if multicast else 'continuous_unicast',0,trial),
                        fanout=min(4,4**c.depth-1) if multicast else 1))
        trials=run_sweep(c,self.luts,specs)
        groups=defaultdict(list)
        for r in trials:groups[(r['topology'],r['mode'],r['target_offered_gbps'])].append(r)
        rows=[]
        for (topology,mode,target),group in sorted(groups.items()):
            row=dict(topology=topology,series='Repeated unicast' if mode=='repeated_unicast' else topology,
                     mode=mode,target_offered_gbps=target,x=statistics.fmean(r['offered_gbps'] for r in group),
                     **stats([r['accepted_gbps'] for r in group]))
            rows.append(row)
        self.save('multicast_throughput' if multicast else 'unicast_throughput',rows,
            dict(kind='throughput_panels',topologies=['Tree'] if multicast else ['Tree','Mesh'],
                 panels=([dict(topology='Tree',series='Tree',label='Native multicast'),
                          dict(topology='Tree',series='Repeated unicast',label='Repeated unicast')]
                         if multicast else None),
                 xlabel='Offered injection load (Gb/s / endpoint)',ylabel='Accepted throughput (Gb/s / endpoint)',
                 title=('Multicast useful delivery · 8 payload flits, 4 destinations' if multicast else
                        'Unicast accepted throughput · 8 payload flits'),scale=1.,yscale='linear'),
            trials=trials,traffic=dict(pattern='Fixed random destination sets per source' if multicast else
                'Fixed random permutation without self destinations; identical for Tree and Mesh',
                attempts='Periodic at every endpoint, independently random initial phases; unlimited source FIFO; attempts counted even when blocked',
                normalization='Both axes count useful payload copies: 28 bits per delivered flit per intended destination, divided by the fixed measurement duration and endpoint count. Route/header/flags excluded.',
                window='Half-open [warmup, warmup + measurement); count arrivals in this interval regardless of packet injection time; no drain counted',
                statistics='95% Student t CI across independent traffic seeds; same flows, phases and eight-flit packet sizes at every load',
                stability='Eight time bins per run and relative difference between first/second half of the measurement window are stored for audit'))

    def area(self):
        import runpy
        spice = runpy.run_path(str(ROOT.parent/'router_char/no_pipelined/tb/block/run_suite.py'))
        PAT, statements = spice['PAT'], spice['statements']
        path=ROOT.parent/'router_char/no_pipelined/src_spice/top/Router.sp'
        modules={m[1]:statements(m[0]) for m in PAT.finditer(path.read_text())}
        def count(name,parents=()):
            if name in parents:raise ValueError('Recursive netlist')
            return sum(1 if s[0].upper()=='M' else count(s.split()[-1],parents+(name,)) if s[0].upper()=='X' else 0
                       for s in modules[name][1:-1])
        groups=Counter();instances=Counter()
        for s in modules['Router'][1:-1]:
            if s[0].upper()=='M':groups['Top-level MOS']+=1;instances['Top-level MOS']+=1
            if s[0].upper()=='X':
                child=s.split()[-1];groups[child]+=count(child);instances[child]+=1
        assert sum(groups.values())==count('Router')
        original_groups=dict(groups)
        # The non-pipelined top has no PCFB32. Keep tie devices with the Arbs.
        groups['MltcUnit']+=groups.pop('PCFB32',0)
        groups['Arb']+=groups.pop('Top-level MOS',0)
        build=path.with_name('Router_build.json')
        if build.exists():
            report=json.loads(build.read_text())
            if report['sha256']==digest(path):assert count('Router')==report['mos']
        labels={'ChildRouter':'Child routers (×4)','ParentRouter':'Parent router',
                'MltcUnit':'Multicast unit','Arb':'Arbiters (×6)'}
        rows=[dict(module=module,label=labels[module],instances=instances[module],transistors=value,kGE=value/4000.,percent=100*value/count('Router'))
              for module,value in sorted(groups.items(),key=lambda pair:-pair[1])]
        assert sum(r['transistors'] for r in rows)==count('Router')
        self.save('area',rows,dict(kind='pie',title='Area'),
                  area_source=str(path),area_sha256=digest(path),total_transistors=count('Router'),
                  original_module_groups=original_groups,
                  area_variant='no_pipelined',
                  regrouping='No top-level PCFB32 in this non-pipelined netlist; 192 top-level tie MOS for unused Arb inputs included in Arb. No devices removed from total.',
                  area_counter_bits=8,area_matches_modeled_counter=self.config.multicast_counter_bits==8,
                  area_scope='Non-pipelined 8-bit-counter Router.sp, selected for the area figure only. Timing and energy still use the existing characterized pipelined LUT. This does not estimate area costs of wider counters or the modeled explicit branch terminator.',
                  normalization='Project convention: 1 GE = 4 transistors, kGE = transistor_count / 4000; not universal NAND2 library area.',
                  methodology='Current Router.sp: recursively expand every X instance; count M devices; group by direct top-level module instances; use the analog run_suite SPICE parser to preserve continuation handling.')

def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--experiments',nargs='+',default=['all'],choices=['all','unicast','congestion','compression','multicast','throughput','area'])
    parser.add_argument('--lut',type=Path,default=DEFAULT_LUT)
    parser.add_argument('--output',type=Path,default=ROOT/'plots')
    parser.add_argument('--config',type=Path,help='JSON Config fields; command-line parameters override this file')
    parser.add_argument('--physical',action='store_true',help='Require measured, validated LUT with matching counter width and a physical synchronous energy input')
    for field in fields(Config):
        flag='--'+field.name.replace('_','-')
        if field.type is bool:parser.add_argument(flag,action=argparse.BooleanOptionalAction,default=None)
        else:parser.add_argument(flag,type=float if field.name=='sync_activity' else field.type,default=None)
    args=parser.parse_args()
    values=json.loads(args.config.read_text()) if args.config else {}
    values.update({f.name:getattr(args,f.name) for f in fields(Config) if getattr(args,f.name) is not None})
    config=Config(**values);luts=load_luts(args.lut)
    if args.physical and (not luts['metadata'].get('physical') or not luts['parser'].get('validated') or not config.sync_energy_physical):
        parser.error('--physical requires physical=true LUT, validated parser and --sync-energy-physical; dummy values cannot produce physical-result figures')
    if args.physical and luts['metadata'].get('multicast_counter_bits')!=config.multicast_counter_bits:
        parser.error('--physical requires LUT metadata.multicast_counter_bits to match --multicast-counter-bits; timing and energy for a wider modeled counter are not characterized by an 8-bit Router LUT')
    if args.physical and luts['metadata'].get('explicit_route_terminator')!=config.explicit_route_terminator:
        parser.error('--physical requires LUT metadata.explicit_route_terminator to match the modeled branch termination; the previous analog netlist does not characterize the added terminal word')
    if luts['metadata'].get('physical') and not luts['parser'].get('validated'):
        parser.error('Measured router timing requires a validated parser; incomplete tables cannot be promoted')
    runner=Experiments(config,luts,args.output)
    started=time.time()
    for name in ['unicast','congestion','compression','multicast','throughput','area']:
        if 'all' in args.experiments or name in args.experiments:getattr(runner,name)()
    print('Completed',len(runner.created),'figures in',round(time.time()-started,1),'seconds',flush=True)


if __name__=='__main__':
    main()
