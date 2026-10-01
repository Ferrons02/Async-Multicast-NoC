#!/usr/bin/env python3
"""Compare like-for-like available path measurements; never sum overlapping windows as truth."""
from pathlib import Path
import json
import os
import re

TB=Path(__file__).resolve().parent

def load(module):
    files=list(TB.glob(f'*/results/{module}/{module}_perf.txt'))
    if not files:return None
    text=files[0].read_text()
    if 'Status: COMPLETE' not in text and 'Status: PARTIAL' not in text:return None
    selected={};records=[];leak=None
    for line in text.splitlines():
        if line.startswith('SELECTED_AUDIT '):
            r=json.loads(line.split(' ',1)[1]);selected[r['key']]=r
        if line.startswith('TRANSACTION_AUDIT '):records.append(json.loads(line.split(' ',1)[1]))
        if line.startswith('LEAKAGE_AUDIT '):leak=json.loads(line.split(' ',1)[1]).get('power')
    campaign=next((line.split(': ',1)[1] for line in text.splitlines()
                   if line.startswith('Simulation campaign: ')), 'unknown')
    protocol=next((line.split(': ',1)[1] for line in text.splitlines()
                   if line.startswith('Measurement protocol: ')), 'baseline')
    return {'selected':selected,'records':records,'leak':leak,'partial':'Status: PARTIAL' in text,
            'path':files[0],'campaign':campaign,'protocol':protocol}


def netlist_consistency():
    """Expose manual sizing/version differences across independently generated levels."""
    def definitions(path):
        result={};name=None
        for line in path.read_text().splitlines():
            line=line.strip()
            if not line or line.startswith('*'):continue
            if line.lower().startswith('.subckt '):
                name=line.split()[1];result[name]=[]
            if name is not None:
                if line.startswith('+'):
                    result[name][-1]+=' '+' '.join(line[1:].split())
                else:
                    result[name].append(' '.join(line.split()))
            if line.lower().startswith('.ends'):name=None
        # Preserve pin order, but ignore harmless device/instance statement order.
        return {name:'\n'.join([lines[0]]+sorted(lines[1:-1])+['.ends'])
                for name,lines in result.items()}
    root=TB.parent/'src_spice'
    blocks={}
    for path in sorted((root/'block').glob('*/*.sp')):
        for name,text in definitions(path).items():
            if name in blocks and blocks[name]!=text:
                raise ValueError('Inconsistent shared block subcircuit: '+name)
            blocks[name]=text
    lines=[]
    for level in ('subsystem','top'):
        for path in sorted((root/level).glob('*.sp')):
            widths=[];logic=[]
            for name,text in definitions(path).items():
                if name not in blocks or blocks[name]==text:continue
                mask=lambda s:re.sub(r'\bW=[^\s]+','W=<width>',s,flags=re.I)
                (widths if mask(text)==mask(blocks[name]) else logic).append(name)
            if widths:lines.append(f'{path.stem}: different MOS widths in '+', '.join(sorted(widths))+'.')
            if logic:lines.append(f'{path.stem}: other definition/version differences in '+', '.join(sorted(logic))+'.')
    return lines


def main():
    names=['StopcodeSel','UpdownSel','ChildSel','MltcSel','InputRouter','PayloadDispatch',
           'Arb','Serializer','QuadRouter','Counter','Deserializer','ChildRouter','ParentRouter','MltcUnit','Router']
    data={n:load(n) for n in names}
    heavy=[n for n in names if data[n] and data[n]['protocol'].startswith('heavy_pipeline_')]
    for n in heavy:data[n]=None
    differences=netlist_consistency()
    lines=['Performance Composition Comparison','==================================',
           'Uses the latest available per-module reports; every PARTIAL report remains provisional.',
           'Partial reports: '+(', '.join(n for n in names if data[n] and data[n]['partial']) or 'none')+'.',
           'Delta = (measured - sum) / sum. These are independent testbench samples, not identical in-situ loads/states.',
           'Subsystem comparisons below match the output branch and header/final-payload role; data words and prior states can still differ.',
           'Topology: src_prs/subsystem/*.act and src_prs/top/Router.act.']
    if heavy:
        lines += ['', 'HEAVY PIPELINE', ', '.join(heavy)+': excluded from legacy unbuffered sums; those sums omit PCFB stages.']
    if data['Arb'] and data['Arb']['protocol'].startswith('arb_pcfb32'):
        lines += ['', 'ARB PIPELINE PROTOCOL',
                  'Arb reports payload train cycle/latency and isolated payload energy.',
                  'It is excluded from the legacy header/final-payload composition tables.',
                  'Use block/results/Arb/Arb_perf.txt for its three dedicated tables.']
    if data['MltcUnit'] and data['MltcUnit']['protocol'].startswith('mltc_pcfb'):
        lines += ['', 'MLTCUNIT PIPELINE PROTOCOL',
                  'MltcUnit includes 8 PCFB4 and 5 PCFB32 absent from the legacy block-path sums.',
                  'Its dedicated report separates route batches, interior payload timing, and isolated payload energy.',
                  'It is excluded from legacy unbuffered payload composition; see subsystem/results/MltcUnit/MltcUnit_perf.txt.']
    campaigns=TB/'subsystem/latest_campaigns.json'
    if campaigns.exists():
        pending=[]
        for name,job in json.loads(campaigns.read_text()).items():
            current=data.get(name)
            if current is None or current['campaign']!=job['campaign']:
                pending.append(f'{name}: report campaign '+(current['campaign'] if current else 'missing')+
                               '; requested campaign '+job['campaign']+'.')
        if pending:
            lines+=['','SUBSYSTEM RESULT UPDATE PENDING',
                    'The following reports still describe earlier simulations. Current netlist consistency',
                    'does not make these old measurements representative of the newly sized circuits.']+pending
    if differences:
        lines+=['', 'NETLIST VERSION / SIZING DIFFERENCES',
                'The current standalone and embedded netlists are not identical. Their measured deltas',
                'must not be attributed solely to composition/loading. Check the campaigns listed below.',
                'This consistency check inspects current files; simulation provenance remains the campaign identifier.']+differences
    lines += [
           '', 'Forward-path comparisons (ns)','-----------------------------',
           f'{"Path":<36}{"Sum":>13}{"Measured":>13}{"Delta":>12}']
    detail=[n+': '+data[n]['campaign'] for n in names if data[n]]
    def pick(module,destination=None,source=None,word=None,fanout=None):
        d=data[module]
        if not d:return None
        recs=[r for r in d['records'] if r.get('forward') is not None
              and (destination is None or destination in r['destinations'])
              and (source is None or r['source']==source) and (word is None or int(r['input_words'][0],16)==word)
              and (fanout is None or len(r['destinations'])==fanout)]
        if not recs:return None
        # The seven phase-aware blocks explicitly identify payloads. Bit 0
        # identifies a terminal flit, not a steady-state sample.
        if any('packet_phase' in r for r in recs):
            recs.sort(key=lambda r:(r.get('packet_phase')!='payload',
                                   r.get('terminal_payload',False),r['forward_raw']))
        else:
            recs.sort(key=lambda r:(not(int(r['input_words'][0],16)&1),r['forward_raw']))
        return recs[0]
    def sel(module,key):
        if not data[module]:return None
        chosen=data[module]['selected']
        return chosen.get('payload:'+key,chosen.get(key))
    comparisons=[]
    def compare(label,parts,measured):
        if any(r is None for _,r in parts) or measured is None:return
        total=sum(r['forward'] for _,r in parts);observed=measured['forward']
        lines.append(f'{label:<36}{total*1e9:13.6f}{observed*1e9:13.6f}{(observed/total-1)*100:11.2f}%')
        formula=' + '.join(f'{m} [{r["label"]}; {r.get("packet_role","phase not classified")}]' for m,r in parts)
        detail.append(label+': '+formula+' -> '+measured['label'])
        comparisons.append((label,parts,measured))
    def sample(module,index,destination,word,phase=None):
        if not data[module]:return None
        found=[r for r in data[module]['records'] if r['input_indices']==[index]
               and r['destinations']==[destination] and r['input_words']==[hex(word)]]
        if len(found)!=1:
            raise ValueError(f'{module} I[{index}] -> {destination}: composition scenario changed')
        rec=found[0]
        if phase is not None:
            assert rec.get('packet_phase')==phase,(module,index,phase)
            if phase=='payload':assert rec.get('terminal_payload') is True,(module,index)
        return rec
    # There is no intermediate payload in the standalone StopcodeSel O1
    # scenario. Use final payloads consistently through each whole path.
    ss_h=sample('StopcodeSel',2,'o1',0xfffffffe,'header')
    ss_f=sample('StopcodeSel',3,'o1',0xffffffff,'payload')
    us_down_h=sample('UpdownSel',3,'o1',0x7ffffffe,'header')
    us_down_f=sample('UpdownSel',5,'o1',0xffffffff,'payload')
    us_up_h=sample('UpdownSel',0,'o0',0xfffffffe,'header')
    us_up_f=sample('UpdownSel',2,'o0',0xffffffff,'payload')
    cs3_h=sample('ChildSel',0,'o3',0xfffffffe,'header')
    cs3_f=sample('ChildSel',2,'o3',0xffffffff,'payload')
    cs1_f=sample('ChildSel',5,'o1',0xffffffff,'payload')
    ms_h=sample('MltcSel',2,'o1',0xfffffffc,'header')
    ms_f=sample('MltcSel',3,'o1',0xffffffff,'payload')
    compare('ChildRouter -> C3 header',[('StopcodeSel',ss_h),('UpdownSel',us_down_h),('ChildSel',cs3_h)],sample('ChildRouter',0,'c3',0x7fffff3e))
    compare('ChildRouter -> C3 final payload',[('StopcodeSel',ss_f),('UpdownSel',us_down_f),('ChildSel',cs3_f)],sample('ChildRouter',1,'c3',0xffffff3f))
    compare('ChildRouter -> C1 final payload',[('StopcodeSel',ss_f),('UpdownSel',us_down_f),('ChildSel',cs1_f)],sample('ChildRouter',5,'c1',0xffffff1f))
    compare('ChildRouter -> P header',[('StopcodeSel',ss_h),('UpdownSel',us_up_h)],sample('ChildRouter',8,'p',0xffffff4e))
    compare('ChildRouter -> P final payload',[('StopcodeSel',ss_f),('UpdownSel',us_up_f)],sample('ChildRouter',10,'p',0xffffff4f))
    compare('ParentRouter -> C3 header',[('MltcSel',ms_h),('StopcodeSel',ss_h),('ChildSel',cs3_h)],sample('ParentRouter',0,'c3',0xffffff3c))
    compare('ParentRouter -> C3 final payload',[('MltcSel',ms_f),('StopcodeSel',ss_f),('ChildSel',cs3_f)],sample('ParentRouter',1,'c3',0xffffff3f))
    compare('ParentRouter -> C1 final payload',[('MltcSel',ms_f),('StopcodeSel',ss_f),('ChildSel',cs1_f)],sample('ParentRouter',5,'c1',0xffffff1f))
    if data['Router']:
        for key,r in data['Router']['selected'].items():
            if key.startswith('unicast:'):
                if r['class_source']=='Ci':
                    dest=r['destinations'][0]
                    sub=pick('ChildRouter','p' if dest=='po' else dest[:-1])
                    arb=pick('Arb','o',r['source'][:-1])
                else:
                    dest=r['destinations'][0];sub=pick('ParentRouter',dest[:-1]);arb=pick('Arb','o','p')
                compare('Router '+key.split(':',1)[1],[('ChildRouter' if r['class_source']=='Ci' else 'ParentRouter',sub),('Arb',arb)],r)
    for title,key in [('Recovery sum: diagnostic only (ns)','recovery'),
                      ('Input cycle sum: diagnostic only (ns)','cycle')]:
        lines+=['',title,'-'*len(title),f'{"Path":<36}{"Sum":>13}{"Measured":>13}{"Delta":>12}']
        for label,parts,r in comparisons:
            if label.startswith('Router'):continue
            if r['recovery'] is None or any(p['recovery'] is None for _,p in parts):continue
            value=lambda p:p['recovery']+(p['forward'] if key=='cycle' else 0)
            total=sum(value(p) for _,p in parts);observed=value(r)
            lines.append(f'{label:<36}{total*1e9:13.6f}{observed*1e9:13.6f}{(observed/total-1)*100:11.2f}%')
    lines+=['','Energy composition (fJ/bit, leakage-subtracted estimates)','-------------------------------------------------------',
            f'{"Path":<36}{"Sum":>13}{"Measured":>13}{"Delta":>12}']
    for label,parts,r in comparisons:
        if label.startswith('Router'):continue
        if r['dynamic_energy'] is None or any(p['dynamic_energy'] is None for _,p in parts):continue
        total=sum(p['dynamic_energy']/32 for _,p in parts);observed=r['dynamic_energy']/32
        lines.append(f'{label:<36}{total*1e15:13.6f}{observed*1e15:13.6f}{(observed/total-1)*100:11.2f}%')
    lines += ['Router per-transfer dynamic energy comparison: N/A. Its partial trace has no idle leakage',
              'measurement and the common supply includes other concurrent transactions. A gross window/32',
              'value in Router_perf.txt is not an isolated transfer energy and is deliberately not compared here.',
              '', 'Leakage composition (uW)','------------------------',f'{"Design":<28}{"Sum":>13}{"Measured":>13}{"Delta":>12}']
    formulas={
        'ChildRouter':{'StopcodeSel':1,'UpdownSel':1,'ChildSel':1},
        'ParentRouter':{'MltcSel':1,'StopcodeSel':1,'ChildSel':1},
        'MltcUnit':{'InputRouter':1,'Serializer':1,'QuadRouter':1,'Counter':4,'Deserializer':4,'PayloadDispatch':1},
        'Router':{'ChildRouter':4,'ParentRouter':1,'MltcUnit':1,'Arb':6},
    }
    for module,parts in formulas.items():
        if module == 'MltcUnit' and data[module] and data[module]['protocol'].startswith('mltc_pcfb'):
            lines.append('MltcUnit: N/A - the legacy sum omits 8 PCFB4 and 5 PCFB32.')
            continue
        if any(data[n] is None or data[n]['leak'] is None for n in parts):continue
        total=sum(data[n]['leak']*count for n,count in parts.items());measured=data[module]['leak'] if data[module] else None
        observed=f'{measured*1e6:13.6f}' if measured is not None else f'{"N/A":>13}'
        delta=f'{(measured/total-1)*100:11.2f}%' if measured is not None else f'{"N/A":>12}'
        lines.append(f'{module:<28}{total*1e6:13.6f}'+observed+delta)
        detail.append(module+' leakage: '+' + '.join(f'{count}*{n}' for n,count in parts.items()))
    lines += ['','Subsystem path coverage and missing references','----------------------------------------------',
              'ChildRouter I->Cj = StopcodeSel.O1 -> UpdownSel.O1 -> ChildSel.Oj. ChildSel already includes its internal selector tree.',
              'ChildRouter I->P = StopcodeSel.O1 -> UpdownSel.O0.',
              'ChildRouter I->M = StopcodeSel.O0. Its standalone O0 sample is the first AND final payload after a consumed stopcode.',
              '  ChildRouter instead has a first nonfinal payload I[12], then a later final payload I[13]. No exact first/final reference exists.',
              'ChildSel standalone covers O3 and O1 only: C0/C2 comparisons are N/A, not substitutions of an O3 sample.',
              'ParentRouter I->Cj = MltcSel.O1 -> StopcodeSel.O1 -> ChildSel.Oj.',
              'ParentRouter I->M has two paths: MltcSel.O0 -> Merge.I0, or MltcSel.O1 -> StopcodeSel.O0 -> Merge.I1.',
              '  Both require an independently characterized Merge<32,true>, currently absent; no complete sum/delta is claimed.',
              'MltcUnit pipelined payload I->Cj = InputRouter.O1 -> PCFB32 -> PayloadDispatch.Cj -> PCFB32 -> Merge.I1.',
              '  Merge and standalone PCFB references are absent. Pipeline timing uses interior payloads; energy uses an isolated nonterminal payload.',
              '  No standalone set covers this complete buffered path and two-child configuration; a mixed-protocol sum is omitted.',
              'MltcUnit pipelined routing = InputRouter.O0 -> Serializer -> QuadRouter.ODj -> PCFB4 -> Deserializer[j] -> Merge.I0.',
              '  QuadRouter.OCj feeds Counter[j] through PCFB4; Counter.Cnt returns to QuadRouter. This control loop is not another serial output stage.',
              '  QuadRouter.Ch configures PayloadDispatch. Four child lanes run in parallel; do not sum four forward latencies.',
              '  Serializer/Deserializer batch intervals overlap and use different input sequences from the subsystem routes.',
              '  Their batch latencies, QuadRouter nibble forward time and Counter cycle time do not form an additive end-to-end latency.',
              '', 'Interpretation','--------------',
              'Forward delay adds only along a serial path, at matched protocol states and comparable loads.',
              'Subsystem comparisons use final payloads consistently because StopcodeSel has no intermediate O1 payload reference.',
              'Header comparisons match the destination but not necessarily the previous selected port or initial retained state.',
              'Different data words and previous states remain a limitation even when branch and header/final-payload role match.',
              'Top-level Router rows retain their earlier exploratory selection; they are not part of this subsystem phase audit.',
              'The measured subsystem vs standalone residual includes fan-out, input slew, gate loading and shared control.',
              'Saved subsystem waveforms contain external interfaces only; they cannot attribute the residual to an individual internal block.',
              'Recovery and forward+recovery sums above are empirical diagnostics, not universal composition laws: handshake work may overlap.',
              'Throughput is not a sum of throughputs. Its limit depends on the bottleneck cycle and the actual pipeline/control dependencies.',
              'ParentRouter includes one uncharacterized Merge; MltcUnit includes four. Their leakage sums are therefore partial.',
              'Energy comparisons use full transaction windows with the measured idle baseline subtracted. They remain state/activity dependent.',
              'Energy is additive across disjoint physical blocks over the same time window; standalone transaction windows/loads differ here.',
              'PayloadDispatch fan-out differs across cases. Arb main tables use verified single-source windows;',
              'its separate concurrent-stress episode has aggregate energy only, not per-source energy.',
              'Do not add Serializer and Deserializer whole-batch latencies as serial delays: their work overlaps through QuadRouter.',
              'The selected MltcUnit route is exactly two input words. The partial Router may only have completed a one-word route;',
              'those batches are not equivalent and their latencies/energies are deliberately not directly compared.',
              'Leakage sums for ParentRouter and MltcUnit omit the Merge instances, and all sums combine independently retained states.',
              'No exact additive model is claimed. Use the numerical residuals above to judge which approximations are useful.',
              '', 'Sample and topology provenance','------------------------------']+detail+['']
    target=TB/'top/results/performance_comparison.txt';target.parent.mkdir(parents=True,exist_ok=True);temporary=target.with_suffix(f'.txt.{os.getpid()}.tmp');temporary.write_text('\n'.join(lines));temporary.replace(target)
    print(target)

if __name__=='__main__':main()
