#!/usr/bin/env python3
"""Physical waveform measurements shared by the module-specific perf_measure scripts.

Analog timing comes from rail crossings. Event logs identify transactions and
delimit checked idle/isolated experiments; energy is integrated from waveforms.
"""
import argparse
from collections import defaultdict
from copy import deepcopy
from datetime import datetime, timezone
from dataclasses import dataclass, asdict
import gzip
import hashlib
import json
from pathlib import Path
import re
import sys
import os
import numpy as np

ROOT = Path(__file__).resolve().parent.parent


def events_from(path):
    result = []
    terminals = set()
    for line in path.read_text(errors='replace').splitlines():
        m = re.match(r'^\s*(SIM_[A-Z_]+)\b(.*)', line)
        if not m:
            continue
        fields = dict(re.findall(r'(\w+)=\s*([^\s=]+)', m[2]))
        fields['kind'] = m[1]
        if 't' in fields:
            fields['t'] = float(fields['t'])
        if fields['kind'] in ('SIM_PASS', 'SIM_FAIL'):
            identity = tuple(sorted(fields.items()))
            if identity in terminals:
                continue
            terminals.add(identity)
        result.append(fields)
    return result


def merge_intervals(intervals, a, b):
    ordered = sorted((max(a,x), min(b,y)) for x,y in intervals if min(b,y)>max(a,x))
    result = []
    for x,y in ordered:
        if result and x <= result[-1][1]:
            result[-1] = (result[-1][0], max(y,result[-1][1]))
        else:
            result.append((x,y))
    return result


@dataclass
class Transaction:
    port: str
    index: int
    word: int
    valid: float
    invalid: float = None
    spacer: float = None
    ack_high: float = None
    ack_low: float = None


class Trace:
    def __init__(self, path, events, partial=False):
        self.path = Path(path)
        self.events = events
        self.partial = partial
        if self.path.suffix == '.csv':
            with self.path.open() as f:
                self.names = f.readline().strip().split(',')
                self.data = np.loadtxt(f, delimiter=',', ndmin=2)
        else:
            self.names,self.data = self.native(self.path)
        self.t = self.data[:,0]
        if np.any(np.diff(self.t)<0) or len(self.t)<2:
            raise ValueError('Invalid waveform timeline')
        self.index = {name:j for j,name in enumerate(self.names)}
        self.vdd = float(np.median(self.col('vdd')))
        self.threshold = self.vdd/2
        self.p = -self.col('vdd')*self.col('i(vpower)')
        self.e = np.r_[0, np.cumsum(np.diff(self.t)*(self.p[1:]+self.p[:-1])/2)]
        resets = [e['t'] for e in events if e['kind']=='SIM_RESET']
        if len(resets)!=1:
            raise ValueError('Exactly one reset-release marker is required')
        self.release = resets[0]
        self.ports = {}
        for name in self.names:
            # Hierarchical diagnostic probes may contain only selected bits or
            # aliased rails. Public protocol channels are top-level nodes only.
            if '.' in name:
                continue
            m = re.fullmatch(r'(.+)_a([tf])_5(\d+)_6',name)
            if m:
                port,rail,bit = m[1],m[2],int(m[3])
                self.ports.setdefault(port,{'t':{},'f':{}})[rail][bit]=name
        self.transactions = {port:self.channel(port) for port in self.ports}
        self.leak = self.leakage()

    @staticmethod
    def native(path):
        opener = gzip.open if path.suffix=='.gz' else open
        with opener(path,'rb') as f:
            header=b''
            while b'$&%#' not in header:
                line=f.readline()
                if not line: raise ValueError('Incomplete native header')
                header+=line.rstrip(b'\n')
            width=int(header[:4]); labels=header.decode().split('TIME',1)[1].split('$&%#',1)[0].split()
            names=['time']+[n[2:].rstrip(')').lower() if n.lower().startswith('v(')
                           else n.lower().rstrip(')')+')' for n in labels]
            if len(names)!=width:raise ValueError('Native header width mismatch')
            # Every number is a 13-character field. Read only complete lines;
            # the final record of a live snapshot is intentionally discarded.
            chunks=[]; carry=b''
            while True:
                block=f.read(4*1024*1024)
                if not block:break
                joined=carry+block; lines=joined.split(b'\n');carry=lines.pop()
                good=[line for line in lines if len(line)%13==0]
                raw=b''.join(good)
                if raw:chunks.append(np.frombuffer(raw,dtype='S13').astype(np.float64))
            if carry and len(carry)%13==0:
                chunks.append(np.frombuffer(carry,dtype='S13').astype(np.float64))
        flat=np.concatenate(chunks)
        # Optional HSPICE end marker is outside the physical voltage range.
        end=np.flatnonzero(flat>1e20)
        if len(end):flat=flat[:end[0]]
        n=len(flat)//width
        return names,flat[:n*width].reshape(n,width)

    def col(self,name):
        return self.data[:,self.index[name]]

    def cross(self,y,j):
        a,b=y[j-1],y[j]
        if a==b:return float(self.t[j])
        return float(self.t[j-1]+(self.threshold-a)*(self.t[j]-self.t[j-1])/(b-a))

    def edges(self,name,rising=True):
        if name not in self.index:return []
        y=self.col(name); h=y>=self.threshold
        ids=np.flatnonzero((~h[:-1]&h[1:]) if rising else (h[:-1]&~h[1:]))+1
        return [self.cross(y,j) for j in ids if self.t[j]>=self.release]

    def channel(self,port):
        spec=self.ports[port];bits=sorted(spec['t'])
        if bits!=sorted(spec['f']):raise ValueError('Unpaired dual rails: '+port)
        ti=[self.index[spec['t'][k]] for k in bits];fi=[self.index[spec['f'][k]] for k in bits]
        ht=self.data[:,ti]>=self.threshold;hf=self.data[:,fi]>=self.threshold
        valid=np.all(ht^hf,axis=1); spacer=~np.any(ht|hf,axis=1)
        starts=np.flatnonzero(~valid[:-1]&valid[1:])+1
        invalids=np.flatnonzero(valid[:-1]&~valid[1:])+1
        spacers=np.flatnonzero(~spacer[:-1]&spacer[1:])+1
        ah=self.edges(port+'_aa'); al=self.edges(port+'_aa',False)
        result=[]
        for j in starts:
            if self.t[j]<self.release:continue
            word=sum((1<<k) for z,k in enumerate(bits) if ht[j,z])
            selected=[ti[z] if ht[j,z] else fi[z] for z in range(len(bits))]
            rise=[self.cross(self.data[:,c],j) for c in selected if self.data[j-1,c]<self.threshold]
            if not rise:raise ValueError('Validity without a rail crossing')
            tr=Transaction(port,len(result),word,max(rise))
            after=invalids[invalids>j]
            if len(after):
                q=after[0];fall=[self.cross(self.data[:,c],q) for c in selected
                                if self.data[q-1,c]>=self.threshold and self.data[q,c]<self.threshold]
                if fall:tr.invalid=min(fall)
            after=spacers[spacers>j]
            if len(after):
                q=after[0];fall=[self.cross(self.data[:,c],q) for c in ti+fi
                                if self.data[q-1,c]>=self.threshold and self.data[q,c]<self.threshold]
                if fall:tr.spacer=max(fall)
            highs=[x for x in ah if x>=tr.valid-1e-15 and (tr.spacer is None or x<=tr.spacer)]
            if highs:
                tr.ack_high=highs[0]
                lows=[x for x in al if x>tr.ack_high]
                if lows:tr.ack_low=lows[0]
            result.append(tr)
        return result

    def integral(self,a,b):
        if not self.t[0]<=a<b<=self.t[-1]:raise ValueError('Energy interval outside saved waveform')
        def primitive(x):
            j=min(np.searchsorted(self.t,x,side='right')-1,len(self.t)-2)
            dx=x-self.t[j];dt=self.t[j+1]-self.t[j]
            p=self.p[j] if dt==0 else self.p[j]+(self.p[j+1]-self.p[j])*dx/dt
            return self.e[j]+dx*(self.p[j]+p)/2
        return float(primitive(b)-primitive(a))

    def leakage(self):
        begins=[e['t'] for e in self.events if e['kind']=='SIM_IDLE_BEGIN']
        ends=[e['t'] for e in self.events if e['kind']=='SIM_IDLE_END']
        if not begins or not ends or ends[0]>self.t[-1]:
            return {'power':None,'reason':'No completed post-round idle window; reset/active averages are not leakage.'}
        a,b=begins[0],ends[0]
        ids=np.flatnonzero((self.t>=a)&(self.t<=b))
        if b-a<5e-9 or len(ids)<10:return {'power':None,'reason':'Idle window too short.'}
        lo,hi=ids[0]-1,ids[-1]+1
        excluded={'time','vdd','i(vpower)','supply_current_a','supply_power_w','supply_energy_j','tb_done','tb_failed'}
        volt=[j for j,n in enumerate(self.names) if n not in excluded]
        logical=self.data[lo:hi+1,volt]>=self.threshold
        transitions=int(np.count_nonzero(logical[1:]!=logical[:-1]))
        if np.max(self.col('reset')[lo:hi+1])>=self.threshold or transitions:
            return {'power':None,'reason':'Switching or reset inside declared idle window.','transitions':transitions}
        # All *interface* data/acks/requests must be at spacer/idle, not merely held valid.
        interface=[j for j,n in enumerate(self.names) if re.match(r'[^.]+_a(?:[tf]_5\d+_6|a|req)$',n)]
        if np.any(self.data[lo:hi+1,interface]>=self.threshold):
            return {'power':None,'reason':'Interface not in spacer/idle in leakage window.'}
        edges=np.linspace(a,b,5)
        means=[self.integral(x,y)/(y-x) for x,y in zip(edges[:-1],edges[1:])]
        # Prefer the later half, compare its two neighboring windows.
        a=edges[2]; mean=self.integral(a,b)/(b-a)
        drift=abs(means[3]-means[2])/max(abs(mean),1e-15)
        mask=(self.t>a)&(self.t<b)
        wt=np.r_[a,self.t[mask],b]
        end_index=np.searchsorted(self.t,b,side='left')
        end_power=self.p[end_index] if self.t[end_index]==b else np.interp(b,self.t,self.p)
        wp=np.r_[np.interp(a,self.t,self.p),self.p[mask],end_power]
        # Adaptive HSPICE samples are not uniformly spaced. Weight noise by
        # elapsed time, using the exact square integral of each linear segment.
        mean_square=float(np.sum(np.diff(wt)*(wp[:-1]**2+wp[:-1]*wp[1:]+wp[1:]**2)/3)/(b-a))
        noise=np.sqrt(max(0.0,mean_square-mean*mean))/max(abs(mean),1e-15)
        if mean<0 or drift>0.01 or noise>0.01:
            return {'power':None,'reason':'Idle mean is not stable within 1%; increase settling window.',
                    'window':[a,b],'neighbor_means':means,'drift':drift,'relative_std':noise}
        return {'power':mean,'window':[float(a),float(b)],'neighbor_means':means,
                'drift':drift,'relative_std':noise,'transitions':transitions,
                'voltage_columns_checked':len(volt),'reason':'No transitions on saved functional nodes; interfaces idle; reset low.'}


def missing(x):return x is None or not np.isfinite(x)
def fmt(x,scale=1,unit=''):
    return 'N/A' if missing(x) else f'{x*scale:.6f}'+(' '+unit if unit else '')


def input_waits(tr):
    return [(tr.ack_high,tr.spacer)] if tr.ack_high is not None and tr.spacer is not None else []


def validate_physical_words(trace,module):
    """Catch extra/missing validity pulses and misdecoded words before measuring."""
    for kind,key in [('SIM_TX','word'),('SIM_RX','actual'),('SIM_CNT_SEND','word')]:
        if module=='Router' and kind=='SIM_RX':
            continue  # Router RX is packet-batched; router_records checks it.
        grouped={}
        for event in trace.events:
            if event['kind']==kind and event.get('t',float('inf'))<=trace.t[-1]:
                grouped.setdefault(event.get('channel','I').lower(),[]).append(event)
        for port,evs in grouped.items():
            words=trace.transactions.get(port,[])
            if not trace.partial and len(words)!=len(evs):
                raise ValueError(f'{port}: physical/log transaction count mismatch ({len(words)} vs {len(evs)})')
            for tr,event in zip(words,evs):
                if tr.word!=int(event[key],16):
                    raise ValueError(f'{port}[{tr.index}]: decoded rail word differs from {kind}')


def output_waits(tr):
    result=[]
    if tr.ack_high is not None:result.append((tr.valid,tr.ack_high))
    if tr.spacer is not None and tr.ack_low is not None:result.append((tr.spacer,tr.ack_low))
    return result


def measure(trace,label,ins,outs,end=None,recovery=True,extra_waits=(),energy_end=None):
    start=ins[0].valid
    final=max(x.valid for x in outs) if end is None else end
    waits=list(extra_waits)
    for tr in ins:waits+=input_waits(tr)
    for tr in outs:waits+=output_waits(tr)
    for left,right in zip(ins[:-1],ins[1:]):
        if left.ack_low is not None and left.spacer is not None:
            waits.append((max(left.ack_low,left.spacer),right.valid))
    excluded=merge_intervals(waits,start,final)
    duration=final-start; correction=sum(y-x for x,y in excluded)
    # Report a trace-based de-embedding estimate, not an unmeasured zero-delay rerun.
    forward=duration-correction
    ack=ins[-1].ack_low if recovery else None
    rwait=merge_intervals(waits,final,ack) if ack is not None and ack>=final else []
    rcor=sum(y-x for x,y in rwait)
    recovered=(ack-final-rcor) if ack is not None and ack>=final else (
        ack-final if ack is not None and getattr(trace,'pipeline_cycles',False) else None)
    stop=energy_end if energy_end is not None else (max([final]+([ack] if ack is not None else [])+
          [x.ack_low for x in outs if x.ack_low is not None]) if recovery else final)
    gross=trace.integral(start,stop)
    leak=trace.leak['power']
    dynamic=gross-leak*(stop-start) if leak is not None else None
    own={(tr.port,tr.index) for tr in ins}
    overlapping=[f'{tr.port}[{tr.index}]' for p in getattr(trace,'input_ports',[]) for tr in trace.transactions[p]
                 if (tr.port,tr.index) not in own and tr.valid<stop
                 and (tr.ack_low or trace.t[-1])>start]
    return {'label':label,'source':ins[0].port,'destinations':sorted(set(x.port for x in outs)),
            'input_indices':[x.index for x in ins],'input_words':[hex(x.word) for x in ins],
            'output_indices':[(x.port,x.index) for x in outs], 'start':start,'output_valid':final,'ack_low':ack,
            'forward_raw':duration,'forward':forward,'forward_tb_wait':correction,
            'recovery_raw':ack-final if ack is not None else None,'recovery':recovered,'recovery_tb_wait':rcor,
            'energy_start':start,'energy_end':stop,'gross_energy':gross,'dynamic_energy':dynamic,
            'energy_per_bit':(dynamic if dynamic is not None else gross)/32,
            'overlapping_input_handshakes':overlapping,
            'removed_forward_intervals':excluded,'removed_recovery_intervals':rwait,
            'inputs':[asdict(t) for t in ins],'outputs':[asdict(t) for t in outs]}


def standard_pairs(trace,inputs,outputs):
    pairs=[]
    for src in inputs:
        for inp in trace.transactions[src]:
            if inp.ack_low is None:continue
            outs=[out for dest in outputs for out in trace.transactions[dest]
                  if inp.valid<=out.valid<inp.ack_low]
            if outs:pairs.append((inp,outs))
    return pairs


def arb_pairs(config,trace):
    """Match by physical acknowledge, then check the packet owner and route."""
    pairs=[];used=set();owner=None
    for out in trace.transactions['o']:
        candidates=[tr for p in config['inputs'] for tr in trace.transactions[p]
                    if tr.word==out.word and tr.valid<=out.valid and tr.ack_high is not None
                    and out.spacer is not None and out.valid<=tr.ack_high<=out.spacer]
        if len(candidates)!=1:
            raise ValueError('Arb output cannot be matched uniquely to the acknowledged source')
        inp=candidates[0];identity=(inp.port,inp.index)
        if identity in used:raise ValueError('Arb input reused for multiple output transfers')
        used.add(identity)
        if owner is not None and owner!=inp.port:
            raise ValueError('Arb changed packet owner before the terminal flit')
        owner=None if out.word&1 else inp.port
        for stage,select_i0 in config.get('arb_paths',{}).get(inp.port,[]):
            prefix='xdut.x'+stage+'.'
            p=float(np.interp(out.valid,trace.t,trace.col(prefix+'p')))
            enabled=float(np.interp(out.valid,trace.t,trace.col(prefix+'n__s')))
            if (p>=trace.threshold)!=select_i0 or enabled<trace.threshold:
                raise ValueError(f'Arb {inp.port}[{inp.index}]: acknowledged source disagrees with {stage} route')
        pairs.append((inp,[out]))
    complete={(p,tr.index) for p in config['inputs'] for tr in trace.transactions[p] if tr.ack_low is not None}
    if not trace.partial and (used!=complete or owner is not None):
        raise ValueError('Arb has unmatched input transfers or an unfinished packet')
    return pairs


def arb_contention_report(trace,records,lines):
    """Report concurrent response and aggregate energy without per-source attribution."""
    contested=[r for r in records if r.get('traffic_mode')=='concurrent_stress']
    if not contested:return
    section(lines,'Concurrent Stress - Response Including Contention')
    lines += ['Diagnostic response = actual input valid -> its matched output valid.',
              'It includes arbitration waiting and is not the uncontended Forward Time above.',
              'Identity uses the unique source acknowledge, data, packet continuity and saved route selectors.',
              'Input -> Output | Word | Input valid ns | Output valid ns | Response ns']
    for r in contested:
        lines.append(f'{r["label"]} | {r["input_words"][0]} | {r["start"]*1e9:.6f} | '
                     f'{r["output_valid"]*1e9:.6f} | {r["response_including_contention"]*1e9:.6f}')
    start=min(r['start'] for r in contested);stop=max(r['energy_end'] for r in contested)
    gross=trace.integral(start,stop);leak=trace.leak['power']
    dynamic=gross-leak*(stop-start) if leak is not None else None
    section(lines,'Concurrent Stress - Aggregate Energy')
    lines += ['One integration for all concurrent packets; no per-source energy is inferred.',
              f'Physical window: {start*1e9:.6f} .. {stop*1e9:.6f} ns; {len(contested)} output flits.',
              'Gross energy: '+fmt(gross,1e12,'pJ'),
              'Leakage-subtracted energy: '+fmt(dynamic,1e12,'pJ'),
              'CONCURRENT_ENERGY_AUDIT '+json.dumps({'start':start,'end':stop,'flits':len(contested),
                   'gross_energy':gross,'dynamic_energy':dynamic,'attribution':'whole concurrent episode'})]


def section(lines,title):
    lines.extend(['',title,'-'*len(title)])


def table(lines,title,rows,cols,records,key,scale,unit):
    section(lines,title+' ('+unit+')')
    lines.append(f'{"Input / Output":<18}'+''.join(f'{c:>18}' for c in cols))
    for row in rows:
        lines.append(f'{row:<18}'+''.join(f'{fmt(records.get((row,col),{}).get(key),scale):>18}' for col in cols))


def scalar(lines,title,value,scale,unit):
    section(lines,title);lines.append(fmt(value,scale,unit))


def phase_annotations(config,trace):
    """Use checked stimulus positions, not the final-flit bit, to identify headers.

    A repeated word can be a header, intermediate payload or terminal payload.
    Each dedicated extractor describes the actual testbench packet sequence.
    Fail closed if the waveform no longer matches that sequence.
    """
    annotations={}
    for port,cases in config['phase_cases'].items():
        actual=trace.transactions[port]
        if len(actual)!=len(cases):
            raise ValueError(f'{port}: phase case count changed; update the dedicated extractor')
        for tr,(word,phase,terminal,role) in zip(actual,cases):
            if tr.word!=word:
                raise ValueError(f'{port}[{tr.index}]: phase case word changed')
            if phase not in ('header','initial','payload','excluded') or (terminal and phase=='header'):
                raise ValueError(f'{port}[{tr.index}]: invalid packet phase')
            annotations[port,tr.index]={'packet_phase':phase,'terminal_payload':terminal,
                                        'packet_role':role}
    if set(config['phase_cases'])!=set(config['inputs']):
        raise ValueError('All measured inputs require packet phase cases')
    for port,words in config.get('phase_control_words',{}).items():
        if [tr.word for tr in trace.transactions[port]]!=words:
            raise ValueError(f'{port}: packet configuration sequence changed')
    return annotations


def choose_phase_records(config,records,phase):
    selected={}
    for rec in records:
        eligible=('payload',) if phase=='payload' else ('header','initial')
        if rec['packet_phase'] not in eligible:
            continue
        key=rec['class_source'],rec['class_destination']
        preferences=config.get('phase_representatives',{}).get(phase,{})
        preferred=preferences.get('->'.join(key),preferences.get(rec['source']))
        # A nonterminal payload always wins over a terminal one, including
        # when an obsolete preferred index would otherwise select the latter.
        rank=(bool(rec['terminal_payload']) if phase=='payload' else False,
              rec['input_indices'][0]!=preferred if preferred is not None else False,
              rec['forward_raw'])
        old=selected.get(key)
        if old is None or rank<old[0]:selected[key]=(rank,rec)
    return {key:rec for key,(_,rec) in selected.items()}


def phase_report(config,trace,records,lines):
    annotations=phase_annotations(config,trace)
    for rec in records:
        rec.update(annotations[rec['source'],rec['input_indices'][0]])
        # The legacy mixed-phase selection rank does not describe these tables.
        rec.pop('selection_priority',None)
    section(lines,'Packet Phase Selection')
    lines.extend([
        'Initial/header and payload are selected independently from the checked testbench sequence.',
        'Payload prefers a nonterminal flit. A final payload is used only when no nonterminal matched sample exists for that table cell.',
        'Each cell is one observed transaction, not a mean or a guaranteed steady-state limit.',
    ]+config.get('phase_notes',[]))
    rows=list(dict.fromkeys(config.get('sources',{}).get(p,p.upper()) for p in config['inputs']))
    cols=list(dict.fromkeys(config['destinations'].get(p,p.upper()) for p in config['outputs']))
    selected={}
    for phase,title in [('initial',config.get('initial_title','Initial / Header')),
                        ('payload',config.get('payload_title','Payload / Steady-State Sample'))]:
        chosen=choose_phase_records(config,records,phase)
        phase_cols=config.get('phase_columns',{}).get(phase,cols)
        if not set(phase_cols)<=set(cols):raise ValueError('Unknown output class in phase table')
        section(lines,title)
        for (source,dest),rec in chosen.items():
            fallback=phase=='payload' and rec['terminal_payload']
            qualifier='FINAL PAYLOAD FALLBACK; includes end-of-packet recovery' if fallback else rec['packet_role']
            lines.append(f'{source}->{dest}: {rec["label"]}; word={rec["input_words"][0]}; {qualifier}.')
            selected[f'{phase}:{source}->{dest}']={**rec,'table_phase':phase,'terminal_fallback':fallback}
        if not chosen:lines.append('N/A: no matched transfer in this phase.')
        for label,key,scale,unit in [('Forward Time','forward',1e9,'ns'),
                                   ('Recovery Time','recovery',1e9,'ns'),
                                   ('Energy per Bit','energy_per_bit',1e15,'fJ/bit')]:
            table(lines,title+' - '+label,rows,phase_cols,chosen,key,scale,unit)
    section(lines,'Input Phase Coverage')
    matched={(rec['source'],rec['input_indices'][0]) for rec in records}
    for (port,index),annotation in annotations.items():
        tr=trace.transactions[port][index]
        lines.append(f'{port}[{index}]={tr.word:08X}: {annotation["packet_role"]}; '+
                     ('matched output' if (port,index) in matched else
                      'no forwarded output; no forward/recovery transfer metric assigned'))
        lines.append('PHASE_AUDIT '+json.dumps({'source':port,'input_index':index,
                     'input_word':hex(tr.word),'matched_output':(port,index) in matched,
                     **annotation},sort_keys=True))
    return selected


def router_cases(environment):
    # Read the actual compiled TB tables, avoiding personal/reference side files.
    text=environment.read_text()
    body=re.search(r'analog function integer case_id;(.*?)endfunction',text,re.S)[1]
    cases={}
    for port,part in re.findall(r'(\d+): begin\s*case \(index\)(.*?)endcase',body,re.S):
        cases[int(port)]={int(i):int(v) for i,v in re.findall(r'(\d+): case_id=(-?\d+);',part)}
    if len(cases)!=5:raise ValueError('Cannot decode Router case table')
    return cases


def router_records(trace,environment):
    ports=['c0i','c1i','c2i','c3i','pi']; cases=router_cases(environment)
    grouped={}
    for p,port in enumerate(ports):
        # The Verilog-A tables omit entries equal to the function default (0).
        for tr in trace.transactions[port]:grouped.setdefault(cases[p].get(tr.index,0),[]).append(tr)
    matches=[e for e in trace.events if e['kind']=='SIM_MATCH' and e['t']<=trace.t[-1]]
    packets={}; cursors={}
    for ev in matches:
        port=ev['channel'].lower();n=int(ev['length']);offset=cursors.get(port,0)
        transactions=trace.transactions[port][offset:offset+n]
        if len(transactions)!=n:continue
        # Packet logs are emitted at the final word. Validate each physical word
        # against the corresponding SIM_RX event, not the packet log timestamp.
        rx=[x for x in trace.events if x['kind']=='SIM_RX' and x.get('channel','').lower()==port
            and x.get('packet')==ev['entry']]
        if len(rx)!=n or any(tr.word!=int(x['actual'],16) for tr,x in zip(transactions,rx)):
            raise ValueError('Router packet/physical waveform mismatch')
        packets.setdefault(int(ev['case']),[]).append(transactions);cursors[port]=offset+n
    results={'unicast':{},'route':{},'payload':{}}; audits=[]
    for case,packets_for_case in sorted(packets.items()):
        ins=grouped.get(case,[])
        if not ins:continue
        src='Pi' if ins[0].port=='pi' else 'Ci'
        # Exact source TB: cases 0..4 of each child and 40..43 of Pi are unicast.
        unicast=case<40 and case%10<=4 or 40<=case<=43
        if unicast:
            for packet in packets_for_case:
                dst='Po' if packet[0].port=='po' else 'Co'
                if len(ins)!=len(packet):continue
                for inp,out in zip(ins,packet):
                    if inp.ack_low is None:continue
                    rec=measure(trace,f'unicast case={case} {inp.port}[{inp.index}]->{out.port}[{out.index}]',[inp],[out])
                    rec['traffic']='unicast'; rec['class_source']=src;rec['class_destination']=dst
                    # Prefer payload words, then the least loaded observed sample.
                    rec['selection_priority']=(int(inp.index==ins[0].index),rec['forward_raw'])
                    audits.append(rec)
                    old=results['unicast'].get((src,dst))
                    if old is None or rec['selection_priority']<old['selection_priority']:results['unicast'][src,dst]=rec
        else:
            # Accept a route batch only after all expected copies are matched.
            # gold_case/gold_port/gold_len are fixed tables in the actual TB.
            text=environment.read_text()
            body=re.search(r'analog function integer gold_case;(.*?)endfunction',text,re.S)[1]
            expected=sum(int(v)==case for _,v in re.findall(r'(\d+): gold_case=(-?\d+);',body))
            if len(packets_for_case)!=expected:continue
            # Parent direct multicast starts with its route; stopcode path first
            # consumes a setup flit; the source-specific case tables identify it.
            route=ins[:-1]
            if route and (src=='Ci' or 45<=case<=50):route=route[1:]
            if not route:continue
            route_out=[x for packet in packets_for_case for x in packet[:-1]]
            if not route_out:continue
            rec=measure(trace,f'multicast route case={case}',route,route_out,recovery=False)
            rec['traffic']='route';rec['class_source']=src;rec['class_destination']='Co';audits.append(rec)
            # Prefer exactly the two-flit route used in MltcUnit.
            priority=(len(route)!=2,route[0].word!=0x348D6312,len(route),case)
            old=results['route'].get((src,'Co'))
            rec['selection_priority']=priority
            if old is None or priority<old['selection_priority']:results['route'][src,'Co']=rec
            payload=ins[-1];payload_out=[packet[-1] for packet in packets_for_case]
            if not all(x.word==payload.word for x in payload_out):raise ValueError('Multicast payload mismatch')
            if payload.ack_low is not None:
                rec=measure(trace,f'multicast payload case={case}',[payload],payload_out)
                rec['traffic']='payload';rec['class_source']=src;rec['class_destination']='Co';audits.append(rec)
                old=results['payload'].get((src,'Co'))
                if old is None or rec['forward_raw']<old['forward_raw']:results['payload'][src,'Co']=rec
    return results,audits


def analyse(config,trace,environment):
    module=config['module']; mode=config['mode']; lines=[]; records=[]; selected={}
    trace.pipeline_cycles=config.get('pipeline_cycles',False)
    trace.input_ports=config.get('inputs', ['c0i','c1i','c2i','c3i','pi'] if mode=='router' else ['i'])
    if mode=='router':
        groups,records=router_records(trace,environment)
        section(lines,'Unicast')
        for title,key,scale,unit in [('Forward Time','forward',1e9,'ns'),('Recovery Time','recovery',1e9,'ns'),('Energy per Bit','energy_per_bit',1e15,'fJ/bit')]:
            table(lines,title,['Ci','Pi'],['Co','Po'],groups['unicast'],key,scale,unit)
        section(lines,'Multicast Route')
        for (source,_),rec in groups['route'].items():
            lines.append(f'{source}: selected batch has {len(rec["input_indices"])} input flit(s); {rec["label"]}.')
        table(lines,'Batch Latency',['Ci','Pi'],['Co'],groups['route'],'forward',1e9,'ns')
        table(lines,'Batch Energy',['Ci','Pi'],['Co'],groups['route'],'dynamic_energy' if trace.leak['power'] is not None else 'gross_energy',1e12,'pJ')
        section(lines,'Multicast Common Payload')
        for title,key,scale,unit in [('Forward Time','forward',1e9,'ns'),('Recovery Time','recovery',1e9,'ns'),('Energy per Bit','energy_per_bit',1e15,'fJ/bit')]:
            table(lines,title,['Ci','Pi'],['Co'],groups['payload'],key,scale,unit)
        selected={f'{group}:{src}->{dst}':r for group,items in groups.items() for (src,dst),r in items.items()}
    elif mode=='counter':
        for tr in trace.transactions['i']:
            if tr.ack_low is not None:
                records.append(measure(trace,f'input cycle I[{tr.index}]',[tr],[],end=tr.ack_low,recovery=False))
        requests=trace.edges('cnt_areq');withdraws=trace.edges('cnt_areq',False)
        reads=[]
        for tr in trace.transactions['cnt']:
            rise=[t for t in requests if t<tr.valid]
            fall=[t for t in withdraws if t>tr.valid and (tr.spacer is None or t<tr.spacer)]
            if not rise or not fall or tr.spacer is None:continue
            synthetic=Transaction('cnt',tr.index,tr.word,rise[-1])
            reads.append(measure(trace,f'output cycle Cnt[{tr.index}]',[synthetic],[tr],end=tr.spacer,recovery=False,
                                 extra_waits=[(tr.valid,fall[0])]))
        records+=reads
        a=next((r for r in records if r['label'].startswith('input cycle')),None);b=reads[0] if reads else None
        selected={'input cycle':a,'output cycle':b}
        for title,rec,key,scale,unit in [('Input Cycle Time',a,'forward',1e9,'ns'),('Output Cycle Time',b,'forward',1e9,'ns'),
                                       ('Input Cycle Energy',a,'dynamic_energy',1e12,'pJ'),('Output Cycle Energy',b,'dynamic_energy',1e12,'pJ')]:
            scalar(lines,title,rec[key] if rec else None,scale,unit)
    elif mode in ('serializer','deserializer','mltc'):
        ins=trace.transactions['i']
        if mode=='serializer':
            for tr in ins:
                outs=[x for x in trace.transactions['o'] if tr.valid<=x.valid<(tr.ack_low or float('inf'))]
                if len(outs)!=7:continue
                records.append(measure(trace,f'word I[{tr.index}] -> seven nibbles',[tr],outs,recovery=False))
            r=records[0] if records else None;selected={'batch':r}
        elif mode=='deserializer':
            # The second output is the exact seven-consecutive-nonzero scenario.
            start=config['batch_start']; batch=ins[start:start+7]
            if len(batch)!=7 or any(x.word==0 for x in batch):raise ValueError('Expected seven non-zero nibbles')
            out=trace.transactions['o'][config['batch_output']]
            if not batch[-1].valid<=out.valid:raise ValueError('Batch output precedes final nibble')
            r=measure(trace,'seven nonzero nibbles I[5:12] -> O[1]',batch,[out],recovery=False)
            records=[r];selected={'batch':r}
        else:
            def checked(port,index,word):
                tr=trace.transactions[port][index]
                if tr.word!=word:raise ValueError(f'MltcUnit {port}[{index}] scenario changed')
                return tr
            batch=[checked('i',index,word) for index,word in config['route_inputs']]
            outs=[checked(*entry) for entry in config['route_outputs']]
            r=measure(trace,'route I[5:7] -> C2[4],C3[4]',batch,outs,recovery=False)
            common=measure(trace,'payload I[7] -> C2[5],C3[5]',[checked('i',*config['payload_input'])],
                           [checked(*entry) for entry in config['payload_outputs']])
            long_route=measure(trace,'long route I[8:11] -> C2[6:8],C3[6:8]',
                               [checked('i',index,word) for index,word in config['long_route_inputs']],
                               [checked(*entry) for entry in config['long_route_outputs']],recovery=False)
            records=[r,common,long_route];selected={'route':r,'payload':common,'long route':long_route}
            section(lines,'Multicast Route')
            lines.append('Two input words carrying route data -> one word each on C2 and C3.')
            lines.append('Inputs: 348D6312, 84100002. Outputs: C2=4D318002, C3=86410002.')
            lines.append('The second input has three nonzero route nibbles; it is not a fully occupied route word.')
        scalar(lines,'Batch Latency',r['forward'] if r else None,1e9,'ns')
        scalar(lines,'Batch Energy',r['dynamic_energy'] if r else None,1e12,'pJ')
        if mode=='mltc':
            section(lines,'Common Payload')
            for title,key,scale,unit in [('Forward Time','forward',1e9,'ns'),('Recovery Time','recovery',1e9,'ns'),('Energy per Bit','energy_per_bit',1e15,'fJ/bit')]:scalar(lines,title,common[key],scale,unit)
            section(lines,'Additional Multicast Route: Two Full Words Plus Continuation')
            lines.append('Inputs: 348C6312, 84121482, 44212003; three input words in total.')
            lines.append('Outputs: C2=4C311212,44200002; C3=86844812,20000002.')
            lines.append('The batch ends when the last of all four output words becomes valid.')
            scalar(lines,'Batch Latency',long_route['forward'],1e9,'ns')
            scalar(lines,'Batch Energy',long_route['dynamic_energy'],1e12,'pJ')
    else:
        if mode=='arb':
            pairs=arb_pairs(config,trace)
        elif module=='QuadRouter':
            # ChildServer emits buffered data after it acknowledges the input.
            # Using the latest input-valid interval would pair that data with
            # the *next* nibble, which can already be on its way from the TB.
            groups={}
            for port in config['outputs']:
                for out in trace.transactions[port]:
                    candidates=[tr for tr in trace.transactions['i'] if tr.word==out.word
                                and (tr.valid<out.valid if out.word==0 else
                                     tr.ack_high is not None and tr.ack_high<out.valid)]
                    if not candidates:raise ValueError(f'QuadRouter output {port}[{out.index}]={out.word:x} has no source')
                    inp=max(candidates,key=lambda tr:tr.valid if out.word==0 else tr.ack_high)
                    groups.setdefault(inp.index,(inp,[]))[1].append(out)
            pairs=list(groups.values())
        elif config.get('pipeline_cycles') and module in ('ChildSel','ChildRouter','ParentRouter'):
            pairs=fifo_pairs(config,trace,environment)
        else:pairs=standard_pairs(trace,config['inputs'],config['outputs'])
        for inp,outs in pairs:
            byclass={}
            for out in outs:byclass.setdefault(config['destinations'].get(out.port,out.port.upper()),[]).append(out)
            for dest,matched in byclass.items():
                source=config.get('sources',{}).get(inp.port,inp.port.upper())
                pull_waits=[]
                if module=='QuadRouter':
                    for port in ('cnt0','cnt1','cnt2','cnt3'):
                        requests=trace.edges(port+'_areq')
                        withdraws=trace.edges(port+'_areq',False)
                        for response in trace.transactions[port]:
                            rise=[x for x in requests if x<response.valid]
                            fall=[x for x in withdraws if x>response.valid and response.spacer is not None and x<response.spacer]
                            if rise:pull_waits.append((rise[-1],response.valid))
                            if fall:pull_waits.append((fall[0],response.spacer))
                rec=measure(trace,f'{inp.port}[{inp.index}] -> '+','.join(f'{x.port}[{x.index}]' for x in matched),[inp],matched,extra_waits=pull_waits)
                if config.get('pipeline_cycles'):
                    # Input release can precede the matching output in a pipeline.
                    if rec['recovery_raw'] is not None and rec['recovery_raw'] < 0:
                        rec['recovery'] = rec['recovery_raw']
                    rec['overlapping_buffered_transfers'] = [
                        f'{other.port}[{other.index}]' for other, other_outs in pairs
                        if other is not inp and other.valid < rec['energy_end']
                        and max([other.ack_low or trace.t[-1]] +
                                [x.ack_low or trace.t[-1] for x in other_outs]) > rec['energy_start']]
                    rec['energy_attribution'] = ('overlapping whole-DUT window; not isolated flit energy'
                        if rec['overlapping_buffered_transfers'] else 'single matched transfer boundary window')
                if mode=='arb' and 'arb_isolated_start' in config:
                    isolated=inp.index>=config['arb_isolated_start']
                    rec['traffic_mode']='isolated_characterization' if isolated else 'concurrent_stress'
                    rec['matching_evidence']='unique source ack + identical word + packet owner + path selectors'
                    if isolated:
                        if rec['overlapping_input_handshakes']:
                            raise ValueError('Arb isolated measurement overlaps another input: '+rec['label'])
                        # An output from a different transfer must not enter the energy window.
                        for other in trace.transactions['o']:
                            if other.index!=matched[0].index and other.valid<rec['energy_end'] and (other.ack_low or trace.t[-1])>rec['energy_start']:
                                raise ValueError('Arb isolated energy window overlaps another output')
                        rec['energy_attribution']='whole Arb serving one verified source; no competing transfer'
                    else:
                        rec['response_including_contention']=rec['forward_raw']
                        rec['energy_attribution']='not attributed per source; use aggregate concurrent episode'
                        rec['forward']=None
                        rec['gross_energy']=rec['dynamic_energy']=rec['energy_per_bit']=None
                rec['class_source']=source;rec['class_destination']=dest;records.append(rec)
                preferred=config.get('representative')
                payload=inp.word&1 or inp.index in config.get('payload_indices',[])
                rank=(inp.index!=preferred if preferred is not None else not payload,rec['forward_raw'])
                rec['selection_priority']=rank
                old=selected.get((source,dest))
                if old is None or rank<old['selection_priority']:selected[source,dest]=rec
        if 'phase_cases' in config:
            selected=phase_report(config,trace,records,lines)
            if mode=='arb' and 'arb_isolated_start' in config:
                arb_contention_report(trace,records,lines)
        elif mode=='scalar':
            r=next(iter(selected.values()),None)
            for title,key,scale,unit in [('Forward Time','forward',1e9,'ns'),('Recovery Time','recovery',1e9,'ns'),('Energy per Bit','energy_per_bit',1e15,'fJ/bit')]:scalar(lines,title,r[key] if r else None,scale,unit)
        else:
            rows=list(dict.fromkeys(config.get('sources',{}).get(p,p.upper()) for p in config['inputs']))
            cols=list(dict.fromkeys(config['destinations'].get(p,p.upper()) for p in config['outputs']))
            for title,key,scale,unit in [('Forward Time','forward',1e9,'ns'),('Recovery Time','recovery',1e9,'ns'),('Energy per Bit','energy_per_bit',1e15,'fJ/bit')]:table(lines,title,rows,cols,selected,key,scale,unit)
        if 'phase_cases' not in config:
            selected={f'{s}->{d}':r for (s,d),r in selected.items()}
    if config.get('pipeline_cycles'):
        lines += cycle_report(config,trace,environment)
    return lines,records,selected


def run(config,script_path):
    directory=Path(script_path).resolve().parent;module=config['module'];level=directory.parents[1].name
    parser=argparse.ArgumentParser(description='Physical performance extraction for '+module)
    parser.add_argument('--waves',type=Path,default=directory/(module+'_waves.csv'))
    parser.add_argument('--events',type=Path,default=directory/(module+'.log'))
    parser.add_argument('--partial',action='store_true')
    parser.add_argument('--output',type=Path,default=directory/(module+'_perf.txt'))
    args=parser.parse_args()
    events=events_from(args.events)
    if config.get('pipeline_cycles'):
        validate_campaign(module,events)
    if not args.partial and not any(e['kind']=='SIM_PASS' for e in events):raise ValueError('Complete report requires a functional PASS')
    trace=Trace(args.waves,events,args.partial)
    validate_physical_words(trace,module)
    if np.any(trace.col('tb_failed')>=trace.threshold):raise ValueError('Functional failure in physical trace')
    environment=ROOT/f'tb/{level}/{module}/{module}_environment.va'
    body,records,selected=analyse(config,trace,environment)
    lines=[f'Module: {module}',f'Status: {"PARTIAL - running simulation snapshot" if args.partial else "COMPLETE - functional PASS"}',
           f'Waveform: {args.waves.resolve()}',f'Events: {args.events.resolve()}',f'Last Complete Sample: {trace.t[-1]*1e9:.6f} ns',
           'Operating Point: PTM65 TT; VDD=1.1 V; temperature=27 C',
           'Timing boundary: complete dual-rail validity at VDD/2, linearly interpolated.']
    if config.get('pipeline_cycles'):
        lines.append('Measurement protocol: '+PROTOCOL)
        lines.append('Pipeline energy: whole-DUT observation window; overlapping buffered transfers are not isolated per-flit energies.')
        lines.append('Pipeline recovery is signed: negative means input released before matching output, not a negative reset delay.')
    lines.append('Energy basis: '+('idle-leakage-subtracted physical window (dynamic estimate).'
                                  if trace.leak['power'] is not None else 'GROSS physical window; leakage unavailable.'))
    if module=='Arb' and 'arb_isolated_start' in config:
        lines.append('Energy attribution: main tables use uncontended, non-overlapping single-source windows; concurrent stress is reported only in aggregate.')
    elif module in ('Router','Arb'):
        lines.append('Energy attribution: whole-DUT window under concurrent traffic; not an isolated per-transfer energy.')
    run_events=[e for e in events if e['kind']=='SIM_RUN']
    if run_events:lines.append('Simulation campaign: '+run_events[0].get('campaign','unspecified'))
    scalar(lines,'Leakage Power',trace.leak['power'],1e6,'uW')
    lines.append(trace.leak['reason'])
    if 'window' in trace.leak:
        lines.append('Idle-only interval: %.6f .. %.6f ns' % tuple(x*1e9 for x in trace.leak['window']))
        lines.append('Neighboring idle means (uW): '+', '.join(f'{x*1e6:.6f}' for x in trace.leak['neighbor_means']))
        lines.append('LEAKAGE_AUDIT '+json.dumps(trace.leak,sort_keys=True))
    lines+=body
    section(lines,'Measurement Interpretation')
    lines += [
        'Timing values subtract only observed external waits of the measured handshake/batch; overlapping waits are counted once.',
        'The corrected values are trace-based de-embedding estimates. Concurrent internal work and arbitration cannot be replayed from boundary traces.',
        'They are not a guarantee of identical timing in an unmeasured zero-delay environment. Raw physical times and all removed intervals follow.',
        'Energy uses the physical start/end interval, with idle leakage subtracted when available. Switching energy during waits is retained.',
        'No whole-round average or arbitrary inter-transaction idle time is assigned to a transfer. Energy per Bit uses the requested 32-bit normalization.',
        'Supply boundary is the entire DUT. Simultaneous output copies share one transaction energy; unrelated concurrent traffic is not separable.',
        'Overlapping destination windows must not be added: they can integrate the same supply current twice.',
        'If leakage is N/A, displayed energy/bit is gross observed DUT window energy/32, not isolated dynamic transfer energy.',
        'Input/output edge slew and loading are those of the saved simulation. N/A means unsupported, unobserved or not yet complete.',
        'All saved functional nodes are checked for idle transitions; unsaved internal nodes cannot be certified directly from these traces.',
    ]+config.get('notes',[])
    section(lines,'Selected Transactions and Reproducible Boundaries')
    for key,record in selected.items():
        if record is None:continue
        lines += [f'{key}: {record["label"]}',
                  '  input valid=%.6f ns; output/batch end=%.6f ns; input ack low=%s' % (record['start']*1e9,record['output_valid']*1e9,fmt(record['ack_low'],1e9,'ns')),
                  '  raw forward/cycle=%.6f ns; removed testbench wait=%.6f ns; corrected=%.6f ns' % tuple(record[k]*1e9 for k in ('forward_raw','forward_tb_wait','forward')),
                  '  raw recovery=%s; removed testbench wait=%.6f ns; corrected=%s' % (fmt(record['recovery_raw'],1e9,'ns'),record['recovery_tb_wait']*1e9,fmt(record['recovery'],1e9,'ns')),
                  '  physical energy window=%.6f .. %.6f ns; gross=%s; leakage-subtracted=%s' % (record['energy_start']*1e9,record['energy_end']*1e9,fmt(record['gross_energy'],1e12,'pJ'),fmt(record['dynamic_energy'],1e12,'pJ')),
                  '  excluded forward waits (ns): '+str([(a*1e9,b*1e9) for a,b in record['removed_forward_intervals']]),
                  '  excluded recovery waits (ns): '+str([(a*1e9,b*1e9) for a,b in record['removed_recovery_intervals']]),
                  '  overlapping buffered transfers: '+(', '.join(record.get('overlapping_buffered_transfers',[])) or 'none recorded; see attribution'),
                  '  overlapping other input handshakes: '+(', '.join(record['overlapping_input_handshakes']) or 'none observed'),
                  'SELECTED_AUDIT '+json.dumps({'key':key,**record},sort_keys=True)]
    section(lines,'All Matched Physical Transactions (audit, SI units)')
    lines += ['TRANSACTION_AUDIT '+json.dumps(record,sort_keys=True) for record in records]
    lines.append('')
    temporary=args.output.with_suffix(f'.txt.{os.getpid()}.tmp');temporary.write_text('\n'.join(lines));temporary.replace(args.output)
    print(f'{module}: {len(records)} matched measurements -> {args.output}; leakage={fmt(trace.leak["power"],1e6,"uW")}',flush=True)
    return trace,records,selected


# Pipeline FIFO matching and input-cycle measurements.
# Accepted identities for older saved reports; new runs use per-module campaign.json.
PIPELINE_CAMPAIGNS = {'ChildSel': {'level': 'block',
              'campaign': '/tmp/ferroma_analog_campaign_VUaHCyYg'},
 'ChildRouter': {'level': 'subsystem',
                 'campaign': '/tmp/ferroma_analog_campaign_b8taKtfx'},
 'ParentRouter': {'level': 'subsystem',
                  'campaign': '/tmp/ferroma_analog_campaign_oEDFAavL'},
 'MltcUnit': {'level': 'subsystem',
              'campaign': '/tmp/ferroma_analog_campaign_VSHXh3nC'},
 'Router': {'level': 'top', 'campaign': None}}

MODULES = {'ChildSel', 'ChildRouter', 'ParentRouter', 'MltcUnit', 'Router'}
PROTOCOL = 'heavy_pipeline_header_payload_v1'


def validate_campaign(module, events):
    """Reject saved data from the pre-change circuit in production extraction."""
    from pathlib import Path
    jobs=PIPELINE_CAMPAIGNS
    if module in jobs:
        record=ROOT/f'tb/{jobs[module]["level"]}/results/{module}/campaign.json'
        if record.exists():
            jobs={module:json.loads(record.read_text())}
    if module not in jobs:return
    actual=[e.get('campaign') for e in events if e['kind']=='SIM_RUN']
    if actual != [jobs[module]['campaign']]:
        raise ValueError('Saved data is not from the current '+module+' campaign; collect the new simulation first')


def va_table(path, function):
    text = path.read_text()
    match = re.search(r'analog function integer '+function+r';(.*?)endfunction', text, re.S)
    if not match: raise ValueError('Missing testbench function '+function)
    result = {}
    for port, body in re.findall(r'(\d+): begin\s*case \(index\)(.*?)endcase', match[1], re.S):
        result[int(port)] = {int(i):int(v)&0xffffffff for i,v in
                            re.findall(r'(\d+): '+function+r'\s*=\s*(-?\d+);', body)}
    if not result: raise ValueError('Missing explicit table '+function)
    return result


def cases(module, environment):
    """index -> expected input, protocol phase, terminal flag, route, output(s)."""
    if module == 'ChildSel':
        words = [0xFFFFFFFE,0xFFFFFFFE,0xFFFFFFFF,0x7FFFFFFE,0xFFFFFFFE,0xFFFFFFFF]
        return [(w,'header' if j%3==0 else 'payload',j%3==2,
                 'o3' if j<3 else 'o1',
                 [('o3' if j<3 else 'o1',j%3,0xFFFF9FFE if j%3==0 else w)])
                for j,w in enumerate(words)]
    words = va_table(environment,'stimulus')[0]
    golden = va_table(environment,'golden')
    if module in ('ChildRouter','ParentRouter'):
        if set(words)!=set(range(14)): raise ValueError('Router subsystem stimulus changed')
        ports = ['m','p','c0','c1','c2','c3'] if module=='ChildRouter' else ['m','c0','c1','c2','c3']
        mapping=[('c3',0),('c3',1),('c2',0),('c2',1),('c1',0),('c1',1),('c0',0),('c0',1)]
        mapping += [('p' if module=='ChildRouter' else 'm', j) for j in range(3)]
        mapping += [None,('m',0 if module=='ChildRouter' else 3),('m',1 if module=='ChildRouter' else 4)]
        result=[]
        for index in range(14):
            dest=mapping[index]
            outs=[] if dest is None else [(dest[0],dest[1],golden[ports.index(dest[0])][dest[1]])]
            result.append((words[index],'header' if index in (0,2,4,6,8,11) else 'payload',
                           index in (1,3,5,7,10,13),'m' if dest is None else dest[0],outs))
        return result
    if module == 'MltcUnit':
        if set(words)!=set(range(26)): raise ValueError('MltcUnit stimulus changed')
        # Multiword routing sequences belong to header, even when bit 0 is high
        # (e.g. continuation I[10]); packet phase is not inferred from that bit.
        headers={0,2,3,5,6,8,9,10,12,14,15}
        routes={0:'C2,C3',1:'C2,C3',2:'C0,C1,C2,C3',3:'C0,C1,C2,C3',4:'C0,C1,C2,C3'}
        return [(words[j],'header' if j in headers else 'payload',j in (1,4,7,11,13,25),
                 routes.get(j,'C2,C3'),[]) for j in range(26)]
    raise ValueError('No fixed cases for '+module)


def checked_cases(config, trace, environment):
    specification=cases(config['module'],environment)
    actual=trace.transactions['i']
    if len(actual)!=len(specification): raise ValueError('Input count changed; update pipeline scenario map')
    for tr,(word,_,_,_,_) in zip(actual,specification):
        if tr.word!=word: raise ValueError(f'I[{tr.index}] differs from pipeline scenario')
    return specification


def fifo_pairs(config, trace, environment):
    specification=checked_cases(config,trace,environment)
    result=[];used=set()
    for inp,(_,_,_,_,outputs) in zip(trace.transactions['i'],specification):
        matched=[]
        for port,index,word in outputs:
            if (port,index) in used: raise ValueError('Output assigned to more than one input')
            out=trace.transactions[port][index]
            if out.word!=word or out.valid<inp.valid:
                raise ValueError(f'FIFO match failed: I[{inp.index}] -> {port}[{index}]')
            used.add((port,index));matched.append(out)
        if matched:result.append((inp,matched))
    expected={(p,tr.index) for p in config['outputs'] for tr in trace.transactions[p]}
    if used!=expected:raise ValueError('Not all outputs have a unique pipeline input')
    return result


def cycle_value(tr):
    if tr.ack_high is None or tr.ack_low is None:raise ValueError('Input cycle requires both ack edges')
    if not tr.valid<=tr.ack_high<tr.ack_low:raise ValueError('Unordered input handshake')
    return tr.ack_low-tr.valid


def cycle_report(config, trace, environment):
    module=config['module']; entries=[]
    if module=='Router':
        case_map=router_cases(environment); grouped=defaultdict(list)
        for p,port in enumerate(('c0i','c1i','c2i','c3i','pi')):
            for tr in trace.transactions[port]:grouped[case_map[p].get(tr.index,0)].append(tr)
        matched=defaultdict(set)
        for e in trace.events:
            if e['kind']=='SIM_MATCH':matched[int(e['case'])].add(e['channel'].lower())
        for case,inputs in sorted(grouped.items()):
            if getattr(trace,'partial',False) and case not in matched:continue
            unicast=(case<40 and case%10<=4) or 40<=case<=43
            route=','.join(sorted(matched[case])) or 'pending'
            for j,tr in enumerate(inputs):
                phase='header' if (j==0 if unicast else j<len(inputs)-1) else 'payload'
                entries.append((tr,phase,phase=='payload' and j==len(inputs)-1,
                                ('unicast:' if unicast else 'multicast:')+route,case))
    else:
        specification=checked_cases(config,trace,environment)
        entries=[(tr,phase,terminal,route,None) for tr,(_,phase,terminal,route,_) in
                 zip(trace.transactions['i'],specification)]
    records=[]
    for tr,phase,terminal,route,case in entries:
        if tr.ack_low is None and getattr(trace,'partial',False):continue
        records.append(dict(source=tr.port,input_index=tr.index,word=f'{tr.word:08X}',phase=phase,
                            terminal_payload=terminal,route=route,case=case,valid=tr.valid,
                            ack_high=tr.ack_high,ack_low=tr.ack_low,cycle_s=cycle_value(tr)))
    lines=['','Input Cycle Time by Packet Phase','--------------------------------',
           'Cycle = own input valid -> own ack-low AFTER its ack-high (physical VDD/2 crossings).',
           'This is not next-input spacing, output spacing or end-to-end latency.',
           'Raw physical times include finite testbench slew/polling and any backpressure; no waits are subtracted.',
           'Header includes consumed setup words and routing continuations. Payload prefers nonterminal flits per route;',
           'terminal payload is used only where that route has no nonterminal sample. Every input is audited below.',
           'Mean/min/max describe observed samples; they are not guaranteed saturated steady-state bounds.']
    for phase in ('header','payload'):
        lines.extend(['',phase.title()+' Input Cycle Time (ns)',
                      'Source  Route                       N        Mean         Min         Max  Selection'])
        groups=defaultdict(list)
        for rec in records:
            if rec['phase']==phase:groups[rec['source'],rec['route']].append(rec)
        for (source,route),group in sorted(groups.items()):
            chosen=group
            if phase=='payload':chosen=[r for r in group if not r['terminal_payload']] or group
            values=[r['cycle_s']*1e9 for r in chosen]
            qualification='header' if phase=='header' else 'nonterminal' if not chosen[0]['terminal_payload'] else 'FINAL FALLBACK'
            lines.append(f'{source:7} {route:27} {len(values):3} {np.mean(values):11.6f} {min(values):11.6f} {max(values):11.6f}  {qualification}')
            selected={r['input_index'] for r in chosen}
            for rec in group:rec['selected_for_phase_summary']=rec['input_index'] in selected
    lines += ['INPUT_CYCLE_AUDIT '+json.dumps(r,sort_keys=True) for r in records]
    return lines


# Router LUT extraction: physical timing, energy, provenance, and validation.
HERE = ROOT/'tb/top'
PIPELINED = ROOT
PROJECT = ROOT.parents[2]
INPUTS = ['c0i', 'c1i', 'c2i', 'c3i', 'pi']
OUTPUTS = ['c0o', 'c1o', 'c2o', 'c3o', 'po']
SERIALIZER_INPUT = 'xdut.xmu.ir_ao0'
KEYS = ('latency_ps', 'ii_ps', 'handshake_ps', 'dynamic_fj_bit', 'gross_fj_bit')
QUIET_WINDOW = 1e-9
SOURCE_RESPONSE_LIMIT = 40e-12  # 10 ps polling, 10 ps edge, sampling tolerance.


def digest(path):
    return hashlib.sha256(Path(path).read_bytes()).hexdigest()


def provenance(manifest_path, campaign_path, events):
    """Bind physical events to the submitted deck, environment and netlist."""
    manifest = json.loads(Path(manifest_path).read_text())
    record = json.loads(Path(campaign_path).read_text())
    campaigns = [e.get('campaign') for e in events if e['kind'] == 'SIM_RUN']
    if campaigns != [record['campaign']]:
        raise ValueError('Physical trace campaign differs from the LUT campaign')
    if record.get('lut_manifest_sha256') != digest(manifest_path):
        raise ValueError('LUT identity manifest changed after campaign submission')
    jobs = [j for j in record['jobs'] if j['module'] == 'Router' and j['level'] == 'top']
    if len(jobs) != 1:
        raise ValueError('Exactly one Router campaign job required')
    hashes = jobs[0]['hashes']
    required = {'src_spice/top/Router.sp', 'tb/top/Router/Router_environment.va',
                'tb/top/Router/Router_tb.sp'}
    if not required <= hashes.keys():
        raise ValueError('Missing submitted Router input hashes')
    for name, expected in hashes.items():
        if digest(PIPELINED / name) != expected:
            raise ValueError('Current input differs from submitted campaign: ' + name)
    if manifest['netlist_sha256'] != hashes['src_spice/top/Router.sp']:
        raise ValueError('Manifest and submitted netlist hashes differ')
    return dict(campaign=record['campaign'], netlist_sha256=manifest['netlist_sha256'],
                lut_manifest_sha256=digest(manifest_path), input_hashes=hashes,
                campaign_hashes_verified=True)


def complete_handshake(tr):
    if (tr.ack_high is None or tr.ack_low is None or tr.spacer is None or
            not tr.valid <= tr.ack_high < tr.ack_low or tr.spacer > tr.ack_low):
        raise ValueError(f'Incomplete/invalid physical handshake: {tr.port}[{tr.index}]')


def register_serializer_input(trace):
    """Trace discovers public ports automatically; explicitly add this full bus.

    MltcUnit's InputRouter O0 aliases Serializer I in the current netlist. Its
    WordBuffer acknowledges only after the complete nibble processing sequence.
    Selected diagnostic rail probes must never be mistaken for a full channel.
    """
    rails = {rail: {bit: f'{SERIALIZER_INPUT}_a{rail}_5{bit}_6' for bit in range(32)}
             for rail in ('t', 'f')}
    required = [name for entries in rails.values() for name in entries.values()]
    required.append(SERIALIZER_INPUT+'_aa')
    missing = [name for name in required if name not in trace.index]
    if missing:
        raise ValueError('Missing complete Serializer input probes: ' + ', '.join(missing))
    trace.ports[SERIALIZER_INPUT] = rails
    trace.transactions[SERIALIZER_INPUT] = trace.channel(SERIALIZER_INPUT)


def serializer_identities(trace, manifest, public, complete=True):
    """All route transfers visit the single Serializer in global manifest order."""
    expected = [row for row in manifest['transfers'] if row['cls'] == 'route']
    actual = trace.transactions.get(SERIALIZER_INPUT, [])
    if len(actual) > len(expected) or (complete and len(actual) != len(expected)):
        raise ValueError('Serializer route-word count differs from manifest')
    result = {}
    for row, tr in zip(expected, actual):
        if tr.word != row['word']:
            raise ValueError(f'Serializer route identity/word mismatch at input {row["id"]}')
        if row['id'] not in public:
            raise ValueError('Serializer route has no identified public input')
        if tr.valid < public[row['id']][1].valid - 1e-15:
            raise ValueError('Serializer route precedes its public input identity')
        try:
            complete_handshake(tr)
        except ValueError:
            if complete:
                raise
            continue
        result[row['id']] = tr
    return result


def serializer_processing(row, public_input, internal, following=None, next_features=None):
    """Internal processing is an own-handshake cycle, never an acceptance II."""
    complete_handshake(internal)
    measured = dict(port=SERIALIZER_INPUT, index=internal.index,
                    input_id=row['id'], valid_s=internal.valid,
                    ack_high_s=internal.ack_high, ack_low_s=internal.ack_low,
                    processing_ps=(internal.ack_low-internal.valid)*1e12,
                    input_to_serializer_ps=(internal.valid-public_input.valid)*1e12,
                    definition='Serializer I valid to own acknowledge-low after own acknowledge-high')
    if following is not None:
        complete_handshake(following)
        response = following.valid-internal.ack_low
        measured['successor_spacing'] = dict(valid_ps=(following.valid-internal.valid)*1e12,
            accepted_ps=(following.ack_high-internal.ack_high)*1e12,
            source_response_ps=response*1e12,
            continuous=-1e-15 <= response <= SOURCE_RESPONSE_LIMIT,
            next_features=next_features)
    return measured


def identities(trace, manifest, complete=True):
    """The per-port ordinal is identity; equal words never choose a match."""
    expected_inputs = defaultdict(list)
    for row in manifest['transfers']:
        expected_inputs[INPUTS[row['port']]].append(row)
    for port, rows in expected_inputs.items():
        actual = trace.transactions.get(port, [])
        if len(actual) > len(rows) or (complete and len(actual) != len(rows)):
            raise ValueError(f'{port}: physical input count differs from manifest')
        for tr, row in zip(actual, rows):
            if tr.index != row['index'] or tr.word != row['word']:
                raise ValueError(f'{port}[{tr.index}]: input identity/word mismatch')
            if complete:
                complete_handshake(tr)
    for p, rows in enumerate(manifest['expected']):
        actual = trace.transactions.get(OUTPUTS[p], [])
        if len(actual) > len(rows) or (complete and len(actual) != len(rows)):
            raise ValueError(f'{OUTPUTS[p]}: physical output count differs from manifest')
        for tr, row in zip(actual, rows):
            if tr.word != row['word']:
                raise ValueError(f'{tr.port}[{tr.index}]: output FIFO identity/word mismatch')
            if complete:
                complete_handshake(tr)
    begins = [e for e in trace.events if e['kind'] == 'SIM_LUT_BEGIN' and e['t'] <= trace.t[-1]]
    ids = [int(e['id']) for e in begins]
    if ids != list(range(len(ids))) or (complete and len(ids) != len(manifest['transfers'])):
        raise ValueError('Missing, duplicate or reordered manifest transaction marker')
    found = {}
    for event in begins:
        row = manifest['transfers'][int(event['id'])]
        if int(event['case']) != row['case'] or int(event['local']) != row['local']:
            raise ValueError('Transaction marker disagrees with manifest identity')
        trs = trace.transactions.get(INPUTS[row['port']], [])
        if row['index'] >= len(trs):
            if complete:
                raise ValueError('Transaction marker has no physical input')
            continue
        tr = trs[row['index']]
        if not -1e-15 <= tr.valid - event['t'] <= SOURCE_RESPONSE_LIMIT:
            raise ValueError('Transaction marker is not aligned with its physical rails')
        mapped = []
        for p, index in row['mapped']:
            actual = trace.transactions.get(OUTPUTS[p], [])
            if index >= len(actual):
                break
            out = actual[index]
            if out.valid < tr.valid:
                raise ValueError('Mapped output precedes its manifest input identity')
            mapped.append(out)
        if len(mapped) != len(row['mapped']):
            continue
        found[row['id']] = (row, tr, mapped)
    return found


def quiet_power(trace, buffers, start, stop, pending_outputs=None):
    """Check every probed PCFB, interfaces, saved node settling and supply."""
    if not trace.t[0] <= start < stop <= trace.t[-1]:
        raise ValueError('Quiet boundary outside waveform')
    mask = (trace.t >= start) & (trace.t <= stop)
    if np.count_nonzero(mask) < 10:
        raise ValueError('Insufficient physical samples in quiet boundary')
    for path in buffers:
        for node, high in [('e', True), ('g', False), ('n__l__a', True), ('inv__r__a', True)]:
            name = path + '.' + node
            if name not in trace.index:
                raise ValueError('Missing PCFB readiness probe: ' + name)
            values = trace.col(name)[mask]
            bad = np.any(values < .9*trace.vdd) if high else np.any(values > .1*trace.vdd)
            if bad:
                raise ValueError('PCFB not empty/ready: ' + name)
    if np.any(trace.col('reset')[mask] > .1*trace.vdd):
        raise ValueError('Reset active in quiet boundary')
    for port, rails in trace.ports.items():
        if pending_outputs is not None and port in pending_outputs:
            # A Deserializer may expose a stable prefix before enough nibbles
            # arrive to form a flit. This is quiescent stored state, not an
            # output transfer. Check it against the next independently known
            # route word; never accept an illegal/full-valid/unacknowledged bus.
            word = pending_outputs[port]
            active = []
            for bit in sorted(rails['t']):
                tv, fv = (trace.col(rails[r][bit])[mask] for r in ('t','f'))
                if (np.any((tv >= .5*trace.vdd) & (fv >= .5*trace.vdd))
                        or np.ptp(tv) > .02*trace.vdd or np.ptp(fv) > .02*trace.vdd):
                    raise ValueError('Pending route rails illegal or changing: '+port)
                wrong = fv if word & (1 << bit) else tv
                if np.any(wrong > .1*trace.vdd):
                    raise ValueError('Pending route prefix disagrees with expected output: '+port)
                active.append((tv >= .5*trace.vdd) | (fv >= .5*trace.vdd))
            if np.any(np.all(active, axis=0)) or np.any(trace.col(port+'_aa')[mask] > .1*trace.vdd):
                raise ValueError('Pending route output is a complete or acknowledged transfer: '+port)
            continue
        for name in [*rails['t'].values(), *rails['f'].values(), port+'_aa']:
            if np.any(trace.col(name)[mask] > .1*trace.vdd):
                raise ValueError('Public interface not idle: ' + name)
    for name in trace.names:
        if name.startswith('xdut.') and np.ptp(trace.col(name)[mask]) > .02*trace.vdd:
            raise ValueError('Saved internal node still settling: ' + name)
    mid = (start+stop)/2
    first = trace.integral(start, mid)/(mid-start)
    second = trace.integral(mid, stop)/(stop-mid)
    if min(first, second) < 0 or abs(first-second) > max(.01*abs(second), 1e-9):
        raise ValueError('Supply not stable within 1% in quiet boundary')
    return trace.integral(start, stop)/(stop-start)


def pending_route_outputs(trace, manifest, row, boundary):
    """Next route word per port, excluding payload and other packets."""
    result = {}
    case = next(c for c in manifest['cases'] if c['case']==row['case'])
    payload_count = sum(cls in ('first', 'middle', 'tail') for cls in case['classes'])
    for p, entries in enumerate(manifest['expected']):
        port = OUTPUTS[p]
        index = sum(tr.valid < boundary for tr in trace.transactions.get(port, []))
        if index >= len(entries) or entries[index]['case'] != row['case']:
            continue
        own = [i for i,e in enumerate(entries) if e['case']==row['case']]
        route_count = len(own)-payload_count
        if index in own[:max(route_count,0)]:
            result[port] = entries[index]['word']
    return result


def isolated_energy(trace, manifest, row, inp, outs, begin, end):
    """Integrate one complete isolated input, counting multicast copies once."""
    complete_handshake(inp)
    for out in outs:
        complete_handshake(out)
    if not begin <= inp.valid < inp.ack_low <= end:
        raise ValueError('Energy window does not contain input handshake')
    if any(out.ack_low > end for out in outs):
        raise ValueError('Energy window omits an output handshake')
    for port in INPUTS:
        for other in trace.transactions.get(port, []):
            if other is not inp and other.valid < end and (other.ack_low or trace.t[-1]) > begin:
                raise ValueError('Unrelated input overlaps isolated energy window')
    allowed = {(out.port, out.index) for out in outs}
    # Parser words have no one-to-one output. Any emitted route word must still
    # belong to this exact case, and quiet boundaries forbid a pending predecessor.
    for p, entries in enumerate(manifest['expected']):
        for out in trace.transactions.get(OUTPUTS[p], []):
            if out.valid < end and (out.ack_low or trace.t[-1]) > begin:
                if row['cls'] == 'route' and entries[out.index]['case'] == row['case']:
                    continue
                if (out.port, out.index) not in allowed:
                    raise ValueError('Unrelated output overlaps isolated energy window')
    pending_before = pending_route_outputs(trace, manifest, row, begin-QUIET_WINDOW) if row['cls']=='route' else None
    pending_after = pending_route_outputs(trace, manifest, row, end-QUIET_WINDOW) if row.get('route_continues') else None
    before = quiet_power(trace, manifest['buffers'], begin-QUIET_WINDOW, begin-10e-12, pending_before)
    after = quiet_power(trace, manifest['buffers'], end-QUIET_WINDOW, end-10e-12, pending_after)
    # Persistent header/parser state can change leakage. Subtract the measured
    # pre-state baseline and report the alternate post-state estimate explicitly.
    gross = trace.integral(begin, end)
    dynamic = gross-before*(end-begin)
    if dynamic <= 0:
        raise ValueError('Nonpositive isolated dynamic energy')
    return dict(start_s=begin, end_s=end, idle_before_w=before, idle_after_w=after,
                gross_j=gross, dynamic_j=dynamic,
                dynamic_with_post_leakage_j=gross-after*(end-begin),
                leakage_state_change_fraction=abs(after-before)/max(abs(before), 1e-15),
                pending_route_outputs_before=pending_before,
                pending_route_outputs_after=pending_after,
                normalization_bits=32, buffers_checked=len(manifest['buffers']))


def burst_interval(previous, current):
    """Three distinct physical intervals; never rename the handshake cycle."""
    prevrow, prev, prevouts = previous
    row, inp, outs = current
    complete_handshake(prev)
    complete_handshake(inp)
    if prevrow['isolated'] or row['isolated'] or prevrow['drain']:
        return None
    response = inp.valid-prev.ack_low
    if response < -1e-15 or response > SOURCE_RESPONSE_LIMIT:
        return None
    old = {o.port: o for o in prevouts}
    output = {o.port: (o.valid-old[o.port].valid)*1e12 for o in outs if o.port in old}
    return dict(previous_id=prevrow['id'], valid_ps=(inp.valid-prev.valid)*1e12,
                previous_class=prevrow['cls'],
                accepted_ps=(inp.ack_high-prev.ack_high)*1e12,
                source_response_ps=response*1e12, output_ps=output)


def parser_fit(observations, tolerance=.15):
    """Fit one z intercept plus ONE linear switch correction; hold out cases."""
    result = dict(model='base(z) + switch_correction(s); switch_correction(0)=0',
                  tolerance_relative=tolerance, validated=False,
                  timing_definition='Serializer I valid to own acknowledge-low after own acknowledge-high',
                  notes=['Timing is the internal Serializer input processing handshake, not frontend acceptance II or output-valid latency.',
                         'Continuous internal input-valid and acceptance spacings are retained separately with successor features.',
                         'Observed input-to-Serializer delay is diagnostic; this parser fit does not invent a frontend delay.',
                         'z excludes the processed flush zero; s includes the previous-word child boundary.',
                         'First-mask/continuation effects are audited by held-out residuals.'])
    problems = []
    for metric, basekey, switchkey in [('timing_ps', 'base_ps_by_z', 'switch_ps'),
                                      ('energy_fj', 'base_energy_fj_by_z', 'switch_energy_fj')]:
        fit = [r for r in observations if r['role'] == 'fit' and r.get(metric) is not None]
        held = [r for r in observations if r['role'] == 'heldout' and r.get(metric) is not None]
        result[basekey] = [None]*7
        result[switchkey] = [None]*8
        design = np.asarray([[float(r['z'] == z) for z in range(7)]+[float(r['s'])]
                             for r in fit], dtype=float).reshape((-1, 8))
        if len(fit) < 8 or np.linalg.matrix_rank(design) != 8:
            problems.append(metric+': insufficient independent z/s measurements')
            continue
        coef = np.linalg.lstsq(design, [r[metric] for r in fit], rcond=None)[0]
        if np.any(coef < 0):
            problems.append(metric+': negative base or switch correction; model unsupported')
            continue
        result[basekey] = coef[:7].tolist()
        result[switchkey] = (coef[7]*np.arange(8)).tolist()
        residuals = []
        for row in fit+held:
            predicted = float(coef[row['z']]+coef[7]*row['s'])
            error = abs(predicted-row[metric])/max(abs(row[metric]), 1e-15)
            residuals.append(dict(id=row['id'], case=row['case'], role=row['role'],
                                  z=row['z'], s=row['s'], measured=row[metric],
                                  predicted=predicted, relative_error=error))
        result[metric+'_validation'] = residuals
        if len({r['case'] for r in held}) < 3:
            problems.append(metric+': fewer than three independently held-out cases')
        if any(r['relative_error'] > tolerance for r in residuals):
            problems.append(metric+': residual exceeds validation tolerance')
        if any(coef[z+1] > coef[z]*(1+tolerance) for z in range(6)):
            problems.append(metric+': trailing-zero trend contradicts reduction assumption')
    result['problems'] = problems
    result['validated'] = not problems
    result['observations'] = observations
    return result


def mean(rows, key):
    values = [r[key] for r in rows if r.get(key) is not None]
    return float(np.mean(values)) if values else None


def rejected_energy_is_excluded(data):
    """A physical checkpoint may retain failed windows only as missing metrics."""
    failures = data['validation']['isolation_rejections']
    rejected = [r for r in data['transactions'] if r.get('isolation_rejection')]
    if not failures:
        return not rejected
    fields = ('energy', 'dynamic_fj_bit', 'gross_fj_bit', 'latency_ps')
    return (len(rejected)==len(failures) and
            all(all(r.get(key) is None for key in fields) for r in rejected))


def merge_recovered_prefix(manifest, rows, parser_rows, provenance_data):
    """Merge audited observations, never waveforms with different time origins.

    Input/output indices become canonical, but physical times stay local to
    each explicitly named campaign. No interval crosses a campaign boundary.
    The submission manifest binds the entire recovered artifact by SHA256.
    """
    recovery = manifest.get('recovered_prefix')
    if recovery is None:
        return rows, parser_rows
    path = Path(recovery['path'])
    if digest(path) != recovery['sha256']:
        raise ValueError('Recovered measurements changed after campaign submission')
    data = json.loads(path.read_text())
    meta = data['metadata']
    transition = recovery.get('netlist_transition', {})
    same_netlist = meta['netlist_sha256'] == manifest['netlist_sha256']
    authorized_transition = (transition.get('user_authorized') is True
        and transition.get('from_sha256') == meta['netlist_sha256']
        and transition.get('to_sha256') == manifest['netlist_sha256'])
    if ((not same_netlist and not authorized_transition)
            or not meta.get('campaign_hashes_verified')
            or not meta.get('prefix_physical_identity_and_handshakes_verified')
            or not rejected_energy_is_excluded(data)):
        raise ValueError('Recovered measurements are not independently validated for this DUT')
    old = deepcopy(data['transactions'])
    if len(old) != recovery['transfer_offset'] or [r['id'] for r in old] != list(range(len(old))):
        raise ValueError('Recovered prefix has missing transaction identities')
    for row in old:
        row.setdefault('campaign', meta['campaign'])
        row.setdefault('netlist_sha256', meta['netlist_sha256'])
    old_parser = deepcopy(data.get('parser', {}).get('observations', []))
    for row in old_parser:
        row.setdefault('campaign', meta['campaign'])
        row.setdefault('netlist_sha256', meta['netlist_sha256'])
    case_ids = {c['case']: c['original_case'] for c in manifest['cases']}
    if set(case_ids.values()) & set(recovery['skipped_cases']):
        raise ValueError('Recovered and rerun cases overlap')
    for row in rows:
        row['campaign'] = provenance_data['campaign']
        row['netlist_sha256'] = manifest['netlist_sha256']
        row['local_campaign_id'] = row['id']
        row['id'] += recovery['transfer_offset']
        row['case'] = case_ids[row['case']]
        row['input_index'] += recovery['input_offsets'][row['port']]
        row['mapped'] = [[p, i+recovery['output_offsets'][p]] for p, i in row['mapped']]
        if 'incoming_interval' in row:
            row['incoming_interval']['previous_id'] += recovery['transfer_offset']
        if 'serializer' in row:
            row['serializer']['input_id'] += recovery['transfer_offset']
    for row in parser_rows:
        row['id'] += recovery['transfer_offset']
        row['case'] = case_ids[row['case']]
        row['campaign'] = provenance_data['campaign']
        row['netlist_sha256'] = manifest['netlist_sha256']
    provenance_data['recovered_prefix'] = recovery
    return old+rows, old_parser+parser_rows


def build_luts(trace, manifest, provenance_data, complete=True, tolerance=.15):
    found = identities(trace, manifest, complete)
    serializers = serializer_identities(trace, manifest, found, complete)
    starts = {int(e['id']): e['t'] for e in trace.events if e['kind'] == 'SIM_LUT_BEGIN'}
    ends = {int(e['id']): e['t'] for e in trace.events if e['kind'] == 'SIM_LUT_END'}
    cases = {c['case']: c for c in manifest['cases']}
    rows, parser_rows = [], []
    rejection = []
    for identity, (row, inp, outs) in found.items():
        case = cases[row['case']]
        try:
            complete_handshake(inp)
        except ValueError:
            continue
        audit = dict(id=identity, case=row['case'], local=row['local'], cls=row['cls'],
                     port=row['port'], mode=case['mode'], label=case['label'],
                     multicast=case.get('multicast', False), mask=case.get('mask'),
                     output=case.get('output'), input_index=inp.index, word=f'{inp.word:08x}',
                     input_valid_s=inp.valid, input_accepted_s=inp.ack_high,
                     input_ack_low_s=inp.ack_low, mapped=row['mapped'],
                     handshake_ps=(inp.ack_low-inp.valid)*1e12)
        if outs:
            audit['forward_ps_by_output'] = {o.port: (o.valid-inp.valid)*1e12 for o in outs}
        if row['isolated'] and identity in ends and ends[identity] <= trace.t[-1]:
            try:
                energy = isolated_energy(trace, manifest, row, inp, outs, starts[identity], ends[identity])
                audit.update(energy=energy, dynamic_fj_bit=energy['dynamic_j']*1e15/32,
                             gross_fj_bit=energy['gross_j']*1e15/32)
                if outs:
                    audit['latency_ps'] = max(o.valid for o in outs)*1e12-inp.valid*1e12
            except ValueError as exc:
                audit['isolation_rejection'] = str(exc)
                rejection.append(f'id {identity}: {exc}')
        previous = found.get(identity-1)
        if previous and previous[0]['port'] == row['port']:
            interval = burst_interval(previous, found[identity])
            if interval:
                audit['incoming_interval'] = interval
                # Discard payload pipeline-fill transitions when characterizing
                # the sustainable middle class. Header/first/tail stay conditional.
                if row['cls'] != 'middle' or (previous[0]['cls'] == 'middle' and row['local'] >= 3):
                    audit['ii_ps'] = interval['accepted_ps']
        rows.append(audit)
        if row['cls'] == 'route':
            feature_index = sum(cls == 'route' for cls in case['classes'][:row['local']])
            features = case['features'][feature_index]
            audit['parser_features'] = features
            internal = serializers.get(identity)
            if internal is not None:
                successor = serializers.get(identity+1)
                next_features = case['features'][feature_index+1] if successor is not None else None
                audit['serializer'] = serializer_processing(row, inp, internal, successor, next_features)
            if 'parser_role' not in case:
                continue
            candidate = dict(id=identity, case=row['case'], label=case['label'],
                             local=feature_index, role=case['parser_role'], **features)
            if 'serializer' in audit:
                candidate['timing_ps'] = audit['serializer']['processing_ps']
                candidate['serializer_audit'] = audit['serializer']
            if 'energy' in audit:
                candidate['energy_fj'] = audit['energy']['dynamic_j']*1e15
            # Discard the initial mask/setup transient from long child-switch runs.
            if not (case['label'] in ('same_child', 'matched_same_child', 'high_switch') and feature_index == 0):
                parser_rows.append(candidate)
    rows, parser_rows = merge_recovered_prefix(manifest, rows, parser_rows, provenance_data)
    for row in rows+parser_rows:
        row.setdefault('campaign', provenance_data['campaign'])
        row.setdefault('netlist_sha256', manifest['netlist_sha256'])
    # Keep quarantined windows visible when merging previously verified work.
    rejection = [f"campaign {r['campaign']} id {r['id']}: {r['isolation_rejection']}"
                 for r in rows if r.get('isolation_rejection')]
    source_netlists = sorted({row['netlist_sha256'] for row in rows})
    metadata = dict(physical=True, usable=False, label='ROUTER CAMPAIGN SNAPSHOT CHARACTERIZATION',
                    mixed_pipeline_measurements=len(source_netlists)>1,
                    source_netlist_sha256=source_netlists,
                    multicast_counter_bits=manifest.get('multicast_counter_bits', 8),
                    explicit_route_terminator=manifest.get('explicit_route_terminator', False),
                    ii_convention='incoming_ack_high',
                    technology=manifest['technology'], VDD=manifest['VDD'],
                    temperature_C=manifest['temperature_C'],
                    timestamp=datetime.now(timezone.utc).isoformat(), **provenance_data,
                    units=dict(latency='ps', ii='ps', energy='fJ / transported input bit; 32 bits per flit'),
                    flit_format=dict(transport_bits=32, flag_bits=4, payload_bits=28,
                                     tail_bit=0, multicast_route_bit=1),
                    energy_normalization_bits=32,
                    definitions=dict(no_load='output valid minus input valid; all PCFBs initially empty/ready',
                        handshake='own input ack low minus own input valid, following own ack high',
                        acceptance='physical input acknowledge rising at VDD/2',
                        ii='incoming acceptance spacing, conditioned on current flit class, continuous ready traffic',
                        parser='internal Serializer I valid to own acknowledge-low processing handshake; not frontend II',
                        energy='whole-DUT isolated window; pre-state quiet leakage subtracted; divided by 32 transport bits once, including flags',
                        loaded='network delivery minus injection request; never a router LUT entry'),
                    assumptions=['Header/first/tail intervals are legal packet-transition intervals, not homogeneous streams.',
                        'II is measured with 10 ps polling/slew; valid, accepted and output spacings remain separate.',
                        'Saved-node checks cannot directly certify unsaved internal nodes.',
                        'Setup processing uses the measured consumed-header handshake as an architectural surrogate.'])
    result = dict(schema_version=1, metadata=metadata,
                  ports=dict(inputs=['C0i','C1i','C2i','C3i','Pi'], outputs=['C0o','C1o','C2o','C3o','Po']),
                  legal_pairs=manifest['legal_pairs'], unicast={}, multicast={}, setup={})
    missing = []
    for cls in ('header', 'middle', 'tail'):
        result['unicast'][cls] = {key: [[None]*5 for _ in range(5)] for key in KEYS}
        for p in range(5):
            for q in range(5):
                if not manifest['legal_pairs'][p][q]:
                    continue
                samples = [r for r in rows if not r['multicast'] and r['cls'] == cls
                           and r['port'] == p and r['output'] == q]
                for key in KEYS:
                    values = [r for r in samples if r['mode'] == ('burst' if key == 'ii_ps' else 'isolated')]
                    value = mean(values, key)
                    result['unicast'][cls][key][p][q] = value
                    if value is None:
                        missing.append(f'unicast.{cls}.{key}[{p}][{q}]')
    subset_audit, convergence = [], []
    for cls in ('first', 'middle', 'tail'):
        result['multicast'][cls] = {key: [None]*5 for key in KEYS}
        for p in range(5):
            samples = [r for r in rows if r['multicast'] and r['cls'] == cls and r['port'] == p
                       and r['mask'] is not None]
            for key in KEYS:
                values = [r for r in samples if r['mode'] == ('burst' if key == 'ii_ps' else 'isolated')]
                value = mean(values, key)
                result['multicast'][cls][key][p] = value
                if value is None:
                    missing.append(f'multicast.{cls}.{key}[{p}]')
                by_mask = {str(mask): mean([r for r in values if r['mask'] == mask], key) for mask in (8, 15)}
                measured = [v for v in by_mask.values() if v is not None]
                spread = (max(measured)-min(measured))/max(abs(float(np.mean(measured))), 1e-15) if len(measured) == 2 else None
                subset_audit.append(dict(cls=cls, port=p, metric=key, masks=by_mask,
                                         relative_spread=spread, passes=spread is not None and spread <= tolerance))
    # Interior middle-flit intervals must settle over each legal sustained burst.
    groups = defaultdict(list)
    for r in rows:
        if r['cls'] == 'middle' and 'ii_ps' in r:
            groups[(r['port'], r['label'])].append(r)
    for (port, label), samples in groups.items():
        values = [r['ii_ps'] for r in samples]
        output_intervals = [max(r['incoming_interval']['output_ps'].values()) for r in samples
                            if r['incoming_interval']['output_ps']]
        cut = len(values)//2
        drift = float(abs(np.mean(values[:cut])-np.mean(values[cut:]))/max(abs(np.mean(values)), 1e-15)) if cut >= 2 else None
        accepted_mean = float(np.mean(values))
        output_mean = float(np.mean(output_intervals)) if output_intervals else None
        rate_error = abs(accepted_mean-output_mean)/max(accepted_mean, output_mean, 1e-15) if output_mean is not None else None
        convergence.append(dict(port=port, label=label, samples=len(values), relative_drift=drift,
                                mean_accepted_ps=accepted_mean, mean_output_ps=output_mean,
                                acceptance_output_relative_difference=rate_error,
                                passes=drift is not None and drift <= tolerance and
                                rate_error is not None and rate_error <= tolerance))
    result['setup'] = dict(latency_ps=[None]*5, handshake_ps=[None]*5, processing_ps=[None]*5,
                           ii_ps=[None]*5, dynamic_fj_bit=[None]*5, gross_fj_bit=[None]*5,
                           architectural_assumption=True,
                           definition='Consumed stop header has no output-valid event; processing_ps/ii_ps use its measured handshake.')
    for p in range(5):
        samples = [r for r in rows if r['cls'] == 'setup' and r['port'] == p and r['mode'] == 'isolated']
        for key in ('handshake_ps', 'dynamic_fj_bit', 'gross_fj_bit'):
            value = mean(samples, key)
            result['setup'][key][p] = value
            if value is None:
                missing.append(f'setup.{key}[{p}]')
        result['setup']['processing_ps'][p] = result['setup']['handshake_ps'][p]
        result['setup']['ii_ps'][p] = result['setup']['handshake_ps'][p]
    result['parser'] = parser_fit(parser_rows, tolerance)
    leak = dict(trace.leak)
    try:
        if leak['power'] is None:
            raise ValueError(leak['reason'])
        quiet_power(trace, manifest['buffers'], *leak['window'])
        leak['all_pcfb_ready'] = True
    except ValueError as exc:
        leak['all_pcfb_ready'] = False
        leak['readiness_rejection'] = str(exc)
    metadata['leakage'] = leak
    # Timing-independent fanout is a tested assumption. Energy is preserved by
    # mask when it fails; averaging differing fanouts must not become usable.
    result['multicast_subset_measurements'] = subset_audit
    result['ii_convergence'] = convergence
    result['validation'] = dict(functional_pass=complete, campaign_hashes_verified=provenance_data.get('campaign_hashes_verified', False),
                              coverage_complete=not missing, missing_entries=missing,
                              parser_validated=result['parser']['validated'],
                              multicast_subset_validated=all(r['passes'] for r in subset_audit),
                              ii_convergence_validated=bool(convergence) and all(r['passes'] for r in convergence),
                              leakage_validated=leak['all_pcfb_ready'],
                              isolation_rejections=rejection)
    metadata['usable'] = all(result['validation'][key] for key in
        ('functional_pass', 'campaign_hashes_verified', 'coverage_complete', 'parser_validated',
         'multicast_subset_validated', 'ii_convergence_validated', 'leakage_validated'))
    metadata['validation_passed'] = metadata['usable']
    result['transactions'] = rows
    return result


def extract_router_luts(argv=None, directory=None):
    directory = Path(directory or HERE/'results/Router')
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--waves', type=Path, default=directory/'Router_waves.csv')
    parser.add_argument('--events', type=Path, default=directory/'Router.log')
    parser.add_argument('--manifest', type=Path, default=HERE/'Router/lut_manifest.json')
    parser.add_argument('--campaign-record', type=Path, default=HERE/'Router/lut_campaign.json')
    parser.add_argument('--output', type=Path, default=directory/'Router_perf.txt')
    parser.add_argument('--lut-output', type=Path, default=directory/'Router_luts.json')
    parser.add_argument('--partial', action='store_true')
    parser.add_argument('--validation-tolerance', type=float, default=.15)
    args = parser.parse_args(argv)
    events = events_from(args.events)
    if any(e['kind'] in ('SIM_FAIL', 'SIM_ERROR', 'SIM_RUNNER_ERROR') for e in events):
        raise ValueError('Cannot publish LUTs from failed physical simulation')
    complete = any(e['kind'] == 'SIM_PASS' for e in events) and not args.partial
    if not args.partial and not complete:
        raise ValueError('Complete LUT extraction requires a functional SIM_PASS')
    proof = provenance(args.manifest, args.campaign_record, events)
    trace = Trace(args.waves, events, partial=args.partial)
    register_serializer_input(trace)
    if 'tb_failed' in trace.index and np.any(trace.col('tb_failed') >= trace.threshold):
        raise ValueError('Physical failure flag asserted')
    manifest = json.loads(args.manifest.read_text())
    data = build_luts(trace, manifest, proof, complete, args.validation_tolerance)
    data['metadata'].update(waveform=str(args.waves.resolve()), events=str(args.events.resolve()))
    args.lut_output.parent.mkdir(parents=True, exist_ok=True)
    temporary = args.lut_output.with_suffix('.json.tmp')
    temporary.write_text(json.dumps(data, indent=2, allow_nan=False)+'\n')
    temporary.replace(args.lut_output)
    lines = ['Module: Router', 'Campaign: '+proof['campaign'],
             'Status: '+('COMPLETE - functional PASS' if complete else 'PARTIAL - incomplete characterization'),
             'LUT usable: '+str(data['metadata']['usable']), 'Machine-readable LUT: '+str(args.lut_output),
             'Netlist SHA256: '+proof['netlist_sha256'],
             'Timing uses interpolated physical VDD/2 crossings; events identify FIFO transactions only.',
             'No-load, handshake, input-valid spacing, accepted spacing and output spacing are distinct.',
             'Parser timing is the physical internal Serializer input processing handshake, not frontend acceptance II.',
             'Energy uses isolated whole-DUT windows with every PCFB empty/ready before and after.',
             'Consumed setup-header processing is an explicitly labeled handshake-based architectural surrogate.',
             'Validation: '+json.dumps(data['validation'], sort_keys=True),
             'Parser validation: '+json.dumps(data['parser']['problems']),
             'All measurements and rejected cases are retained in the JSON audit.']
    args.output.write_text('\n'.join(lines)+'\n')
    print(f'Router: {len(data["transactions"])} physical observations; usable={data["metadata"]["usable"]}; {args.lut_output}')
    return data
