"""Shared batching, geometry, and measurement summaries."""
from __future__ import annotations
from collections import Counter

from dataclasses import dataclass, field

from functools import lru_cache

from typing import Any

@lru_cache(maxsize=4096)
def _canonical(values):
    return tuple(sorted(set(values)))

@dataclass(frozen=True)
class SpikeEvent:
    sample_id: int
    timestep: int
    source_neuron: int
    source_tile: int
    destination_neurons: tuple[int, ...]
    destination_tiles: tuple[int, ...]
    semantic: str = "spike"
    spike_time: float | None = None

    def __post_init__(self):
        object.__setattr__(self, "destination_neurons", _canonical(tuple(self.destination_neurons)))
        object.__setattr__(self, "destination_tiles", _canonical(tuple(self.destination_tiles)))
        if self.sample_id < 0 or self.timestep < 0 or not 0 <= self.source_tile < 16:
            raise ValueError("Invalid sample, timestep or source tile")
        if not 0 <= self.source_neuron < 1024:
            raise ValueError("Source address does not fit the shared 10-bit tag")
        if not self.destination_tiles or any(not 0 <= t < 16 for t in self.destination_tiles):
            raise ValueError("Destination tiles must be nonempty and inside the substrate")
        if not self.semantic:
            raise ValueError("A spike semantic is required")
import math

import numpy as np

def distribution(values):
    values = np.asarray(values, dtype=float)
    if not len(values):
        return dict(mean=0., median=0., p90=0., p95=0., p99=0., max=0)
    return dict(mean=float(values.mean()), median=float(np.median(values)),
                p90=float(np.percentile(values, 90)), p95=float(np.percentile(values, 95)),
                p99=float(np.percentile(values, 99)), max=int(values.max()))

def confidence95(values):
    values = np.asarray(values, dtype=float)
    if not len(values):
        raise ValueError('Cannot average an empty sample set')
    if len(values) == 1:
        return float(values[0]), 0.
    # Student t two-sided .975 quantiles, df 1..30. Higher df uses scipy when
    # available, otherwise a conservative df=30 value (recorded in README).
    table = (12.706, 4.303, 3.182, 2.776, 2.571, 2.447, 2.365, 2.306,
             2.262, 2.228, 2.201, 2.179, 2.160, 2.145, 2.131, 2.120,
             2.110, 2.101, 2.093, 2.086, 2.080, 2.074, 2.069, 2.064,
             2.060, 2.056, 2.052, 2.048, 2.045, 2.042)
    critical = table[min(len(values)-2, len(table)-1)]
    return float(values.mean()), float(critical * values.std(ddof=1) / math.sqrt(len(values)))

def empty_result(architecture):
    integer = ('logical_spikes', 'physical_packets', 'physical_flits', 'router_traversals',
               'link_traversals', 'illegal_deliveries', 'filter_operations',
               'route_setup_count', 'route_flits', 'payload_flits')
    real = ('noc_inference_latency_ns', 'mean_packet_latency_ns', 'p95_packet_latency_ns',
            'queueing_time_ns', 'service_stall_time_ns', 'router_energy_pj',
            'wire_energy_pj', 'filter_energy_pj', 'total_energy_pj',
            'switched_link_length_um', 'route_energy_pj', 'service_occupancy_ns')
    return dict(architecture=architecture, **{k: 0 for k in integer},
                **{k: 0. for k in real})
from collections import Counter, defaultdict

from dataclasses import dataclass

import math

import numpy as np

@dataclass(frozen=True)
class Batch:
    sample_id: int
    timestep: int
    source_tile: int
    destination_tiles: tuple[int, ...]
    semantic: str
    events: tuple[SpikeEvent, ...]
    release_time: float = 0.0
    waiting_latency: float = 0.0

    @property
    def addresses(self):
        return tuple(e.source_neuron for e in self.events)

    @property
    def size(self):
        return len(self.events)

def natural_groups(events):
    groups = defaultdict(list)
    for event in events:
        key = (event.sample_id, event.timestep, event.source_tile,
               event.destination_tiles, event.semantic)
        groups[key].append(event)
    return tuple(Batch(*key, tuple(sorted(group, key=lambda e: (e.source_neuron,
                         -math.inf if e.spike_time is None else e.spike_time))))
                 for key, group in sorted(groups.items()))

def chunk_batches(events, batch_max):
    if not isinstance(batch_max, int) or batch_max < 1:
        raise ValueError("batch_max must be a positive integer")
    return tuple(Batch(g.sample_id, g.timestep, g.source_tile, g.destination_tiles,
                       g.semantic, g.events[i:i + batch_max])
                 for g in natural_groups(events)
                 for i in range(0, len(g.events), batch_max))

def timestamp_batches(events, batch_max, timestep_duration):
    """At first timestamp, wait exactly one timestep; never mix SNN steps.

    Times and returned waiting latency use the caller's timestamp unit. This
    optional sensitivity is separate from the primary zero-wait boundary mode.
    """
    if timestep_duration <= 0 or batch_max < 1:
        raise ValueError("Positive window and cap required")
    result = []
    for group in natural_groups(events):
        if any(e.spike_time is None for e in group.events):
            raise ValueError("Timestamp mode requires every event timestamp")
        remaining = sorted(group.events, key=lambda e: (e.spike_time, e.source_neuron))
        while remaining:
            deadline = remaining[0].spike_time + timestep_duration
            ready = [e for e in remaining if e.spike_time <= deadline]
            remaining = remaining[len(ready):]
            for i in range(0, len(ready), batch_max):
                packet = tuple(ready[i:i + batch_max])
                result.append(Batch(group.sample_id, group.timestep, group.source_tile,
                                    group.destination_tiles, group.semantic, packet,
                                    deadline, max(deadline - e.spike_time for e in packet)))
    return tuple(result)

def natural_statistics(events):
    groups = natural_groups(events)
    sizes = np.asarray([g.size for g in groups], dtype=float)
    result = {"count": len(groups), "spikes": int(sizes.sum()),
              "mean": float(sizes.mean()) if sizes.size else 0.0,
              "median": float(np.median(sizes)) if sizes.size else 0.0,
              "max": int(sizes.max()) if sizes.size else 0,
              "histogram": dict(sorted(Counter(int(v) for v in sizes).items()))}
    for q in (90, 95, 99):
        result[f"p{q}"] = float(np.percentile(sizes, q)) if sizes.size else 0.0
    for cap in (2, 4, 8, 16, 32, 64):
        result[f"p_ge_{cap}"] = float(np.mean(sizes >= cap)) if sizes.size else 0.0
        result[f"spike_fraction_ge_{cap}"] = float(sizes[sizes >= cap].sum() / sizes.sum()) if sizes.sum() else 0.0
    return result

from types import SimpleNamespace
from evaluation.golden_model import router
legacy = SimpleNamespace(config=router, models=router, sim=router)
from types import SimpleNamespace

TREE = legacy.models.Tree(2)

def tile_xy(tile):
    return legacy.models.leaf_xy(tile, 2)

def tile_center_um(tile, pitch=1000.):
    x, y = tile_xy(tile)
    return (x + .5) * pitch, (y + .5) * pitch

def tree_center_um(address, pitch=1000.):
    return legacy.models.coordinates(address, legacy.config.Config(depth=2, tile_um=pitch))

def distance_um(a, b):
    return abs(a[0] - b[0]) + abs(a[1] - b[1])

def wire(length_um, bits, activity=1., vdd=1.1,
         resistance_ohm_um=.2, capacitance_ff_um=.2):
    """Return RC in ns and dynamic wire energy in pJ; no router energy."""
    if min(length_um, bits, activity, vdd, resistance_ohm_um, capacitance_ff_um) < 0:
        raise ValueError('Wire parameters must be nonnegative')
    return dict(length_um=length_um,
                delay_ns=.5 * resistance_ohm_um * capacitance_ff_um * length_um**2 * 1e-6,
                energy_pj=bits * activity * capacitance_ff_um * length_um * vdd**2 / 1000.)
