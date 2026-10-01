"""Sourced external NoC parameters and shared experiment settings."""
from __future__ import annotations
from dataclasses import asdict, dataclass

import hashlib

import json

from pathlib import Path

from typing import Literal

Status = Literal['reported', 'derived', 'calibrated', 'assumed']

@dataclass(frozen=True)
class ParameterValue:
    value: int | float | tuple[float, ...]
    unit: str
    source: str
    status: Status
    notes: str = ''

SOURCES = {
    'su2024': {
        'doi': '10.1109/JETCAS.2024.3433427',
        'url': 'https://pure.manchester.ac.uk/ws/portalfiles/portal/338151518/JETCAS_SWITCH-174.pdf',
        'file': 'su2024_accepted.pdf',
        'version': 'Accepted author manuscript; one repository cover page',
    },
    'su2025': {
        'doi': '10.1109/ISCAS56072.2025.11043591',
        'url': 'https://pure.manchester.ac.uk/ws/portalfiles/portal/362632208/ISCAS_ENCODING-9.pdf',
        'file': 'su2025_hbs.pdf',
        'version': 'Accepted author manuscript; one repository cover page',
    },
    'lee2021': {
        'doi': '10.1109/JSSC.2020.3043186',
        'url': 'https://pure.korea.ac.kr/en/publications/a-65-nm-06-fjbitsearch-ternary-content-addressable-memory-using-a/',
        'version': 'Author institution record of the primary paper; abstract inspected',
    },
}

PARAMETERS = {
    'su2024_table_i_b': {
        'technology_nm': ParameterValue(40, 'nm', 'Su2024 Section VIII, manuscript p8', 'reported'),
        'packet_bits': ParameterValue(128, 'bit', 'Su2024 Table I(b), manuscript p9 / PDF p10', 'reported'),
        'ports': ParameterValue(5, 'port', 'Su2024 Table I(b), manuscript p9', 'reported'),
        'input_slots': ParameterValue(5, 'slot', 'Su2024 Section VIII-B, manuscript p9', 'reported', 'Circular FIFO, not the one-slot 22 nm point.'),
        'area_um2': ParameterValue(33650, 'um^2', 'Su2024 Table I(b)', 'reported', 'Post-synthesis comparison.'),
        'forward_latency_ns': ParameterValue(1.934, 'ns', 'Su2024 Table I(b): 1934 psec header latency', 'reported'),
        'packet_rate_mpps': ParameterValue(534, 'Mpacket/s', 'Su2024 Table I(b), Proposed Multicast row', 'reported'),
        'service_interval_ns': ParameterValue(1000 / 534, 'ns', '1000 / Su2024 Table I(b) packet rate in Mpacket/s', 'derived', 'Pipelining permits initiation faster than end-to-end header latency at this five-slot characterization point.'),
        'router_energy_pj_bit': ParameterValue(.17, 'pJ/bit', 'Su2024 Table I(b), Unicast Energy column', 'reported'),
        'branch_energy_range_pj_bit': ParameterValue((.03, .04), 'pJ/bit/additional branch', 'Su2024 Table I(b), final column', 'reported'),
        'branch_fraction': ParameterValue((.03 + .04) / 2 / .17, 'fraction', 'Midpoint of Su2024 Table I(b) branch increment divided by unicast energy', 'derived', 'A fitted ratio at 40 nm / 128 bits, not a measured 22 nm fanout coefficient.'),
        'baseline_area_um2': ParameterValue(54083, 'um^2', 'Su2024 Table I(b), Baseline Multicast row', 'reported'),
        'baseline_header_latency_ns': ParameterValue(1.629, 'ns', 'Su2024 Table I(b), Baseline Multicast row: 1629 psec', 'reported', 'Input buffering overlaps route computation.'),
        'baseline_packet_rate_mpps': ParameterValue(404, 'Mpacket/s', 'Su2024 Table I(b), Baseline Multicast row', 'reported'),
        'baseline_energy_pj_bit': ParameterValue(.23, 'pJ/bit', 'Su2024 Table I(b), Baseline Multicast row', 'reported', 'Measured for five-flit packets; optimistic for single-flit traffic.'),
    },
    'su2024_table_iii': {
        'technology_nm': ParameterValue(22, 'nm', 'Su2024 Section XI, manuscript p12', 'reported'),
        'async_area_um2': ParameterValue(1789, 'um^2', 'Su2024 Table III, manuscript p13 / PDF p14', 'reported'),
        'async_forward_latency_ns': ParameterValue(.67, 'ns', 'Su2024 Table III', 'reported'),
        'async_router_energy_pj_bit': ParameterValue(.13, 'pJ/bit', 'Su2024 Table III', 'reported'),
        'async_input_slots': ParameterValue(1, 'slot', 'Su2024 Section XI, manuscript p12', 'reported', 'One input Mousetrap stage.'),
        'async_output_slots': ParameterValue(1, 'slot', 'Su2024 Section XI, manuscript p12', 'reported', 'One output Mousetrap stage.'),
        'sync_area_um2': ParameterValue(2693, 'um^2', 'Su2024 Table III', 'reported'),
        'sync_forward_latency_ns': ParameterValue(.64, 'ns', 'Su2024 Table III', 'reported'),
        'sync_router_energy_pj_bit': ParameterValue(.21, 'pJ/bit', 'Su2024 Table III', 'reported'),
        'sync_clock_ns': ParameterValue(.64, 'ns', 'Su2024 Section XI single-cycle switch + Table III latency', 'derived', 'Inferred one clock period from explicit single-cycle description; no separate frequency is listed.'),
        'sync_input_slots': ParameterValue(2, 'slot', 'Su2024 Section XI, manuscript p12', 'reported'),
        'sync_output_slots': ParameterValue(2, 'slot', 'Su2024 Section XI, manuscript p12', 'reported'),
    },
    'hbs_tree': {
        'endpoints': ParameterValue(16, 'core', 'Su2025 Section IV, manuscript p3 / PDF p4', 'reported'),
        'core_size_mm': ParameterValue(1, 'mm', 'Su2025 Section IV', 'reported', 'Each virtual core occupies 1 x 1 mm^2.'),
        'r1_routers': ParameterValue(4, 'router', 'Su2025 Section IV / Figure 4', 'reported'),
        'r2_routers': ParameterValue(1, 'router', 'Su2025 Section IV / Figure 4', 'reported'),
        'ports': ParameterValue(5, 'port', 'Su2025 Section IV-A', 'reported'),
        'source_address_bits': ParameterValue(10, 'bit', 'Su2025 Section IV-A', 'reported'),
        'routing_bits': ParameterValue(8, 'bit', 'Su2025 Section IV-A', 'reported'),
        'packet_bits': ParameterValue(18, 'bit', '10-bit tag + 8-bit HBS routing field, Su2025 Section IV-A', 'derived'),
        'core_capacity': ParameterValue(40, 'neuron/core', 'Su2025 Section IV NAV mapping', 'reported'),
        'forward_latency_ns': ParameterValue(.67, 'ns', 'Su2024 Table III; Su2025 says same switch microarchitecture with different route logic', 'assumed', 'Transfer from 22 nm Proposed Multicast, not a measured HBS delay.'),
        'service_interval_ns': ParameterValue(1000 / 534, 'ns', 'Reciprocal of Su2024 Table I(b) 534 Mpacket/s', 'assumed', 'EXPLICIT MIXED-POINT PROXY: 40 nm, post-synthesis, 128-bit, five-slot input rate transferred to 22 nm, 18-bit, one-slot HBS. No technology scaling. Sensitivity required.'),
        'router_energy_pj_bit': ParameterValue(.13, 'pJ/bit', 'Su2024 Table III', 'assumed', '22 nm Proposed Multicast switch energy proxy for HBS routing logic.'),
        'service_sensitivity_ns': ParameterValue((1., 1000 / 534, 3., 5.), 'ns', 'Benchmark sensitivity design around the recovered absolute-rate proxy', 'assumed', 'These alternatives are not additional measurements.'),
    },
    'su2025_validation': {
        'nav_timesteps': ParameterValue(400, 'timestep', 'Su2025 Section IV', 'reported'),
        'mapping_trials': ParameterValue(50, 'mapping', 'Su2025 Section IV', 'reported'),
        'routing_energy_ratio_to_fbs': ParameterValue(.443, 'ratio', 'One minus 55.7% reduction, Su2025 Section IV-B', 'derived'),
        'routing_energy_ratio_to_symbol': ParameterValue(.519, 'ratio', 'One minus 48.1% reduction, Su2025 Section IV-B', 'derived'),
        'total_energy_ratio_to_fbs': ParameterValue(.474, 'ratio', 'One minus 52.6% reduction, Su2025 Section IV-B', 'derived'),
        'total_energy_ratio_to_symbol': ParameterValue(.509, 'ratio', 'One minus 49.1% reduction, Su2025 Section IV-B', 'derived'),
        'illegal_packet_ratio_to_symbol_upper_bound': ParameterValue(.3, 'ratio', 'Su2025 Section IV-B: less than 30%', 'reported', 'Strict upper bound, not an exact ratio.'),
        'area_ratio_to_fbs': ParameterValue(.710, 'ratio', 'One minus 29.0% reduction, Su2025 Section IV-A', 'derived'),
        'area_ratio_to_symbol': ParameterValue(.906, 'ratio', 'One minus 9.4% reduction, Su2025 Section IV-A', 'derived'),
    },
    'sync_mesh': {
        'clock_ns': ParameterValue(.64, 'ns', 'Su2024 Table III + Section XI single-cycle description', 'derived'),
        'service_interval_ns': ParameterValue(.64, 'ns', 'Su2024 Section XI says full throughput with two-slot stall/go buffers', 'derived'),
        'forward_latency_ns': ParameterValue(.64, 'ns', 'Su2024 Table III', 'reported'),
        'packet_bits': ParameterValue(26, 'bit', 'Benchmark exact 16-core mask + Su2025 10-bit source tag', 'assumed', 'Table III does not specify a fixed datapath width; 26 is the minimum logical single-flit width. 32-bit sensitivity should be supported.'),
        'router_energy_pj_bit': ParameterValue(.21, 'pJ/bit', 'Su2024 Table III', 'reported'),
        'integrated_link_extra_cycles': ParameterValue(0, 'cycle', 'Benchmark mesh timing assumption; Su2024 does not specify link register boundaries', 'assumed', 'Primary interpretation absorbs the short common-model wire into the one-cycle hop budget. The paper does not establish physical timing slack for this integration.'),
        'registered_link_extra_cycles': ParameterValue(1, 'cycle', 'Benchmark conservative registered-link sensitivity; not reported by Su2024', 'assumed', 'Alternative explicitly adds a link capture cycle after each switch traversal.'),
    },
    'filtering': {
        'cam_search_fj_bit': ParameterValue(.6, 'fJ/bit/search', 'Lee2021 primary-paper abstract, Su2025 reference [17]', 'reported'),
        'cam_rows': ParameterValue(128, 'row', 'Lee2021 primary-paper abstract', 'reported'),
        'cam_columns': ParameterValue(64, 'bit/row', 'Lee2021 primary-paper abstract', 'reported'),
        'cam_technology_nm': ParameterValue(65, 'nm', 'Lee2021 primary-paper abstract', 'reported'),
        'macro_search_pj': ParameterValue(.6 * 128 * 64 / 1000, 'pJ/search', '0.6 fJ/bit/search x 128 x 64 bits / 1000', 'derived', 'Full referenced macro search. Su2025 does not disclose how its illegal-event filter is dimensioned.'),
        'filter_energy_pj': ParameterValue(0, 'pJ/illegal event', 'Benchmark transport-only lower bound', 'assumed', 'Not an assertion that filtering is free; total energy must also be reported for positive costs.'),
        'sensitivity_pj': ParameterValue((0., .24, 4.9152), 'pJ/illegal event', 'Benchmark sensitivity: transport only; hypothetical 40 x 10 array; referenced 128 x 64 macro', 'assumed'),
    },
    'energy_model': {
        'output_energy_fraction': ParameterValue((.03 + .04) / 2 / .17, 'fraction', 'Su2024 Table I(b) branch/unicast ratio transferred to Table III asynchronous base energy', 'assumed', 'E(bits,f)=bits*E1*((1-alpha)+alpha*f). Transfer of the fitted 40 nm asynchronous ratio to 22 nm HBS is not separately characterized. Applied to HBS only by default; xpipes retains its unsplit reported energy/bit coefficient.'),
        'output_fraction_sensitivity': ParameterValue((0., .03 / .17, .035 / .17, .04 / .17), 'fraction', 'Zero-output-cost lower bound and Su2024 Table I(b) endpoint/midpoint ratios', 'assumed'),
    },
    'common_substrate': {
        'tile_um': ParameterValue(1000, 'um', 'Su2025 virtual core size + benchmark common-substrate requirement', 'derived'),
        'resistance_ohm_um': ParameterValue(.2, 'ohm/um', 'Existing plots/config.py and task brief Section 6', 'assumed'),
        'capacitance_ff_um': ParameterValue(.2, 'fF/um/rail', 'Existing plots/config.py and task brief Section 6', 'assumed'),
        'vdd': ParameterValue(1.1, 'V', 'Existing PTM65 plots/config.py; common-wire abstraction', 'assumed', 'A common wire-energy comparison voltage, not an extracted 22 nm HBS supply.'),
        'wire_activity': ParameterValue(1., 'fraction', 'Benchmark common switched-wire abstraction', 'assumed', 'Same selected wire activity for external links and Our Tree; sweep if needed.'),
    },
}

def value(group: str, parameter: str):
    return PARAMETERS[group][parameter].value

def default_config_values() -> dict:
    """Keyword arguments for ComparisonConfig; all transfers remain in metadata."""
    return {
        'hbs_forward_latency_ns': value('hbs_tree', 'forward_latency_ns'),
        'hbs_service_interval_ns': value('hbs_tree', 'service_interval_ns'),
        'hbs_router_energy_pj_bit': value('hbs_tree', 'router_energy_pj_bit'),
        'hbs_input_slots': value('su2024_table_iii', 'async_input_slots'),
        'hbs_output_slots': value('su2024_table_iii', 'async_output_slots'),
        'hbs_packet_bits': value('hbs_tree', 'packet_bits'),
        'sync_clock_ns': value('sync_mesh', 'clock_ns'),
        'sync_router_energy_pj_bit': value('sync_mesh', 'router_energy_pj_bit'),
        'sync_packet_bits': value('sync_mesh', 'packet_bits'),
        'sync_input_slots': value('su2024_table_iii', 'sync_input_slots'),
        'sync_output_slots': value('su2024_table_iii', 'sync_output_slots'),
        'filter_energy_pj': value('filtering', 'filter_energy_pj'),
        'output_energy_fraction': value('energy_model', 'output_energy_fraction'),
    }

def metadata() -> dict:
    """Serializable provenance snapshot, including hashes of downloaded primary PDFs."""
    papers = Path(__file__).resolve().parent / 'papers'
    sources = {key: dict(source) for key, source in SOURCES.items()}
    for source in sources.values():
        if 'file' in source and (papers / source['file']).exists():
            source['sha256'] = hashlib.sha256((papers / source['file']).read_bytes()).hexdigest()
    return {
        'schema_version': 1,
        'sources': sources,
        'parameters': {group: {key: asdict(p) for key, p in params.items()}
                       for group, params in PARAMETERS.items()},
    }
from dataclasses import dataclass, asdict

from pathlib import Path

import math

BATCH_SIZES = (1, 2, 4, 8, 16, 32, 64)

@dataclass(frozen=True)
class ComparisonConfig:
    tile_um: float = 1000.
    resistance_ohm_um: float = .2
    capacitance_ff_um: float = .2
    vdd: float = 1.1
    wire_activity: float = 1.
    source_address_bits: int = 10
    core_capacity: int = 40
    seed: int = 20260929
    hbs_forward_latency_ns: float = value('hbs_tree', 'forward_latency_ns')
    hbs_service_interval_ns: float | None = value('hbs_tree', 'service_interval_ns')
    hbs_router_energy_pj_bit: float = value('hbs_tree', 'router_energy_pj_bit')
    hbs_input_slots: int = 1
    hbs_output_slots: int = 1
    hbs_packet_bits: int = 18
    # Zero is the transport-only lower bound; positive filter costs are a sweep.
    filter_energy_pj: float = 0.
    hbs_exact_routing: bool = False
    sync_clock_ns: float = value('sync_mesh', 'clock_ns')
    sync_router_energy_pj_bit: float = value('sync_mesh', 'router_energy_pj_bit')
    sync_packet_bits: int = value('sync_mesh', 'packet_bits')
    sync_input_slots: int = 2
    sync_output_slots: int = 2
    # Fanout exponent/component uncertainties remain explicit model parameters.
    output_energy_fraction: float = value('energy_model', 'output_energy_fraction')
    lut_path: str = str(Path(__file__).resolve().parents[2] / 'golden_model/router_luts.json')

    def __post_init__(self):
        if self.source_address_bits != 10:
            raise ValueError('This comparison uses the ten-bit paper source tag')
        if self.hbs_service_interval_ns is not None and (
            not math.isfinite(self.hbs_service_interval_ns) or self.hbs_service_interval_ns <= 0
        ):
            raise ValueError('HBS service interval must be positive and finite')
        if min(self.tile_um, self.sync_clock_ns, self.core_capacity) <= 0:
            raise ValueError('Tile pitch, synchronous period and capacity must be positive')

    def metadata(self):
        return asdict(self)

    def tree_config(self):
        from .helpers import legacy
        return legacy.config.Config(depth=2, tile_um=self.tile_um,
            resistance_ohm_um=self.resistance_ohm_um,
            capacitance_ff_um=self.capacitance_ff_um, vdd=self.vdd,
            async_activity=self.wire_activity, seed=self.seed)
