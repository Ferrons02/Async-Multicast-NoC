"""Explicit source-width exception for the high-batch suite, with original engines.

The supplemental workloads require globally unique source IDs above 1023. The
user authorized thirteen-bit source tags for this suite. Our Tree keeps its
32-bit physical flit (28 payload bits) and gains only ceil(13*B/28) packing;
HBS/mesh retain a single packet per spike and add three modeled packet bits.
All router timing, service intervals, buffers, routing, energy coefficients and
wire functions are reused unchanged from the original comparison.

Isolated FunctionType globals adapt the two hard-coded endpoint codec calls in
the old Our Tree adapter. This neither edits old source nor monkeypatches its
module globals. The cloned functions execute the original code objects and the
original BatchSimulator, including contention and delivery verification.
"""
from __future__ import annotations

from collections import Counter, defaultdict
from dataclasses import asdict, replace
import math
from functools import lru_cache, partial
from types import FunctionType

from .config import ComparisonConfig
from . import our_tree as _original_tree

SOURCE_ADDRESS_BITS = 13
MAX_LOGICAL_NEURONS_PER_TILE = 256


def _check_width(source_address_bits):
    if type(source_address_bits) is not int or source_address_bits not in (10, 13):
        raise ValueError('This adapter supports only original 10-bit or authorized 13-bit source tags')
    return source_address_bits


def _clone(function, namespace):
    clone=FunctionType(function.__code__,namespace,function.__name__,
                       function.__defaults__,function.__closure__)
    clone.__kwdefaults__=function.__kwdefaults__
    clone.__annotations__=dict(function.__annotations__)
    clone.__doc__=function.__doc__
    clone.__module__=function.__module__
    return clone


@lru_cache(maxsize=2)
def _adapter(source_address_bits):
    """Create private codec bindings; never mutate original module state."""
    bits=_check_width(source_address_bits)
    namespace=dict(_original_tree.__dict__)
    namespace['pack_addresses']=partial(_original_tree.pack_addresses,address_bits=bits)
    namespace['unpack_addresses']=partial(_original_tree.unpack_addresses,address_bits=bits)
    compiler=_clone(_original_tree.compile_batch,namespace)
    namespace['compile_batch']=compiler
    runner=_clone(_original_tree.run,namespace)
    return compiler,runner


def pack_addresses(addresses,source_address_bits=SOURCE_ADDRESS_BITS):
    return _original_tree.pack_addresses(addresses,address_bits=_check_width(source_address_bits))


def unpack_addresses(payload,count=None,source_address_bits=SOURCE_ADDRESS_BITS):
    return _original_tree.unpack_addresses(payload,count=count,
                                           address_bits=_check_width(source_address_bits))


def compile_batch(batch,packet_id,release_ps,tree_config,
                  source_address_bits=SOURCE_ADDRESS_BITS):
    compiler,_=_adapter(_check_width(source_address_bits))
    return compiler(batch,packet_id,release_ps,tree_config)


def _run_with_phase_observer(events,config,batch_max,bits):
    compiler,runner=_adapter(bits)
    namespace=dict(runner.__globals__)
    instances=[]

    def observed_compile(batch,packet_id,release_ps,tree_config):
        program=compiler(batch,packet_id,release_ps,tree_config)
        program.high_batch_phase_counts=Counter(getattr(e,'phase','') or 'unclassified'
                                                 for e in batch.events)
        return program

    class ObservedBatchSimulator(_original_tree.BatchSimulator):
        def __init__(self,config):
            super().__init__(config)
            self.phase_metrics=defaultdict(lambda:defaultdict(float))
            instances.append(self)

        def until_delivered(self,message_ids):
            start=self.now
            super().until_delivered(message_ids)
            phase_completion={}
            last_phases=set()
            for packet_id in message_ids:
                program=self.programs[packet_id]
                phase_counts=program.high_batch_phase_counts
                occurrences=sum(phase_counts.values())
                energy=self.energy[packet_id]
                complete=max(delivery['time_ps'] for delivery in self.deliveries[packet_id].values())
                if math.isclose(complete,self.now,rel_tol=0.,abs_tol=1e-7):
                    last_phases.update(phase_counts)
                for phase,count in phase_counts.items():
                    fraction=count/occurrences
                    row=self.phase_metrics[phase]
                    row['logical_spikes']+=count
                    row['physical_packets']+=fraction
                    row['participating_physical_packets']+=1
                    row['router_energy_pj']+=fraction*energy['router_fj']/1000.
                    row['wire_energy_pj']+=fraction*energy['wire_fj']/1000.
                    row['route_energy_pj']+=fraction*energy['route_fj']/1000.
                    row['payload_flits']+=fraction*len(program.packet.payload)
                    row['physical_flits']+=fraction*len(program.injected)
                    phase_completion[phase]=max(phase_completion.get(phase,start),complete)
            for phase,complete in phase_completion.items():
                self.phase_metrics[phase]['noc_inference_latency_ns']+=(complete-start)/1000.
            if not last_phases and message_ids:
                raise AssertionError('No phase accounts for the timestep completion barrier')
            for phase in last_phases:
                self.phase_metrics[phase]['additive_barrier_charge_ns']+=(self.now-start)/1000./len(last_phases)

    namespace['compile_batch']=observed_compile
    namespace['BatchSimulator']=ObservedBatchSimulator
    result=_clone(runner,namespace)(events,config,batch_max)
    phases={phase:dict(row) for phase,row in sorted(instances[0].phase_metrics.items())}
    for row in phases.values():
        row['logical_spikes']=int(row['logical_spikes'])
        row['participating_physical_packets']=int(row['participating_physical_packets'])
        row['total_energy_pj']=row['router_energy_pj']+row['wire_energy_pj']
        row.setdefault('additive_barrier_charge_ns',0.)
        row['filter_energy_pj']=0.
        row['phase_completion_duration_ns']=row['noc_inference_latency_ns']
        row['critical_barrier_charge_ns']=row['additive_barrier_charge_ns']
    result['phase_metrics']=phases
    result['phase_metrics_definition']={
        'energy_and_packets':'Actual packet totals allocated by phase address-occurrence fraction; additive, no replay',
        'latency':'Sum of per-step maximum completion for packets containing phase, from common step start; overlapping, nonadditive',
        'barrier_charge':'Each step duration assigned equally to phases in last-completing packets; additive attribution, not isolated latency'}
    result['phase_accounting']=dict(result['phase_metrics_definition'])
    return result


def run(events,config=None,batch_max=1,*,source_address_bits=SOURCE_ADDRESS_BITS,
        include_phase_metrics=True):
    """Run the unchanged full engine with endpoint packing and observation only."""
    bits=_check_width(source_address_bits)
    config=config or ComparisonConfig()
    if include_phase_metrics:
        result=_run_with_phase_observer(events,config,batch_max,bits)
    else:
        _,runner=_adapter(bits)
        result=runner(events,config,batch_max)
    result.update(source_address_bits=bits,source_padding_tag=(1<<bits)-1,
                  source_address_policy='globally_unique_in_band_source_tag',
                  logical_core_capacity=MAX_LOGICAL_NEURONS_PER_TILE,
                  physical_flit_bits=32,payload_bits_per_flit=28,
                  supplemental_address_width_exception=(bits!=10),
                  physical_engine='unchanged comparisons.noc.our_tree.BatchSimulator',
                  physical_engine_code_reused=True)
    return result


def external_configs(config=None,*,source_address_bits=SOURCE_ADDRESS_BITS):
    """Reuse every existing baseline parameter; extend only source-tag width.

    Default widths are 13+8=21 bits for HBS and 13+16=29 bits for mesh. Energy
    follows the existing per-bit model; cycle/service timing stays unchanged.
    This is a declared width-model extrapolation, not a resized-router extraction.
    """
    from .simulation import external_configs as original_external_configs
    config=config or ComparisonConfig()
    bits=_check_width(source_address_bits)
    hbs,mesh=original_external_configs(config)
    extra=bits-config.source_address_bits
    return replace(hbs,packet_bits=hbs.packet_bits+extra),replace(mesh,packet_bits=mesh.packet_bits+extra)


def metadata(config=None,*,source_address_bits=SOURCE_ADDRESS_BITS):
    """Keep physical controls distinct from the supplemental logical/tag exception."""
    config=config or ComparisonConfig()
    bits=_check_width(source_address_bits)
    hbs,mesh=external_configs(config,source_address_bits=bits)
    return dict(source_address_bits=bits,reserved_padding_tag=(1<<bits)-1,
                logical_core_capacity=MAX_LOGICAL_NEURONS_PER_TILE,
                original_comparison_config=config.metadata(),
                hbs_config=asdict(hbs),sync_config=asdict(mesh),
                our_tree_physical_flit_bits=32,our_tree_payload_bits=28,
                source_width_exception='Explicitly authorized for high-batch suite only',
                width_energy_interpretation='Existing linear per-bit model; no timing or energy coefficient changes',
                engine_reuse='Original code objects with private endpoint-codec globals; original simulators unchanged')
