"""Recompute selected plots from frozen SNN inference traces; write no reports."""
from concurrent.futures import ProcessPoolExecutor, as_completed
from copy import deepcopy
from dataclasses import replace
from functools import lru_cache
import hashlib
import json
from pathlib import Path
from .config import ComparisonConfig
from . import hbs_tree, sync_mesh, noc, phase_transport
from .workloads import CountedWorkload, analyze_workload
from .plotting import aggregate

ROOT = Path(__file__).resolve().parents[1]

def external_configs(config):
    common = dict(pitch_um=config.tile_um, wire_activity=config.wire_activity,
                  wire_vdd=config.vdd, resistance_ohm_um=config.resistance_ohm_um,
                  capacitance_ff_um=config.capacitance_ff_um)
    if config.hbs_service_interval_ns is None:
        raise ValueError('A sourced or explicit HBS service interval is required')
    hbs = hbs_tree.HbsConfig(forward_latency_ns=config.hbs_forward_latency_ns,
        service_interval_ns=config.hbs_service_interval_ns,
        router_energy_pj_bit=config.hbs_router_energy_pj_bit,
        energy_shared_fraction=1-config.output_energy_fraction,
        input_slots=config.hbs_input_slots,output_slots=config.hbs_output_slots,
        packet_bits=config.hbs_packet_bits,filter_energy_pj=config.filter_energy_pj,
        exact_routing=config.hbs_exact_routing,**common)
    mesh = sync_mesh.MeshConfig(clock_period_ns=config.sync_clock_ns,
        router_energy_pj_bit=config.sync_router_energy_pj_bit,
        packet_bits=config.sync_packet_bits,input_slots=config.sync_input_slots,
        output_slots=config.sync_output_slots,**common)
    return hbs, mesh

@lru_cache(maxsize=3)
def prepared(name):
    workload = CountedWorkload.load(ROOT/'data'/f'{name}.npz')
    mapping = json.loads((ROOT/'data'/f'{name}_mapping.json').read_text())['mapping']
    return workload, {int(k): v for k, v in mapping.items()}


def sample(name, sample_id, caps, lut):
    workload, mapping = prepared(name)
    events = workload.sample_events(sample_id, mapping)
    config = ComparisonConfig(lut_path=lut)
    hbs, mesh = noc.external_configs(config)
    baselines = [phase_transport.run(events, cfg, arch)
                 for arch, cfg in (('hbs_tree', hbs), ('sync_mesh', mesh))]
    rows = []
    for cap in caps:
        result = noc.run(events, config, batch_max=cap)
        if not result['payload_delivery_verified']:
            raise ValueError('Router output differs from the expected spike addresses')
        for row in (result, *baselines):
            if row['logical_spikes'] != len(events):
                raise ValueError('A NoC changed the logical spike count')
            rows.append(dict(row, workload=name, mapping='activity_aware', sample=sample_id,
                             batch_max=cap, source_address_bits=13))
    return rows


def generate(reference, samples, caps, workers, lut):
    if samples < 1 or workers < 1 or not caps or min(caps) < 1:
        raise ValueError('Samples, workers, and batch caps must be positive')
    gate = dict(schema_version=1, workloads={}, batch_caps=sorted(set(caps)), samples=samples,
                run_label='', physical_simulation_performed=True,
                model='LUT-backed NoC simulation; frozen SNN inference traces',
                source_address_resolution='13-bit source tags; 21-bit HBS and 29-bit mesh packets',
                mapping='Frozen activity-aware mapping; first declared test sample IDs',
                router_lut_sha256=hashlib.sha256(Path(lut).read_bytes()).hexdigest(),
                configuration=ComparisonConfig(lut_path=str(lut)).metadata())
    jobs=[]
    for name in sorted(reference['energy']['gate']['workloads']):
        workload, mapping = prepared(name)
        if samples > len(workload.sample_ids):
            raise ValueError(f'{name}: only {len(workload.sample_ids)} samples are available')
        subset=replace(workload,spike_counts=workload.spike_counts[:samples],
                       labels=workload.labels[:samples],predictions=workload.predictions[:samples],
                       sample_ids=workload.sample_ids[:samples])
        gate['workloads'][name]=dict(summary=subset.summary(),
            mappings={'activity_aware':analyze_workload(subset,mapping)})
        jobs.extend((name,int(s),gate['batch_caps'],str(lut)) for s in subset.sample_ids)
    rows=[]
    with ProcessPoolExecutor(max_workers=workers) as pool:
        pending=[pool.submit(sample,*job) for job in jobs]
        for index,future in enumerate(as_completed(pending),1):
            rows.extend(future.result())
            print(f'Simulated {index}/{len(jobs)} inference samples',flush=True)
    rows.sort(key=lambda r:(r['workload'],r['sample'],r['batch_max'],r['architecture']))
    bars=aggregate(rows,('total_energy_pj','noc_inference_latency_ns','physical_packets'))
    return dict(energy=dict(gate=gate,bars=bars,metric='total_energy_pj',mapping='activity_aware'),
                latency=dict(gate=gate,bars=bars,metric='noc_inference_latency_ns',mapping='activity_aware'),
                batch_distribution=dict(gate=gate,spike_weighted=False),
                weighted_batch_distribution=dict(gate=gate,spike_weighted=True))
