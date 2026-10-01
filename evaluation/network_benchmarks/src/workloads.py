"""Frozen counted SNN traces, deterministic mappings, and batching statistics."""
from __future__ import annotations
from dataclasses import asdict, dataclass, field

import hashlib

import json

from pathlib import Path

from typing import Any, Optional

import numpy as np

@dataclass(frozen=True)
class Population:
    name: str
    start: int
    size: int
    tiles: tuple[int, ...]
    targets: tuple[str, ...]
    role: str
    mapping_statistic: str = "mean_count"

@dataclass(frozen=True)
class CountedSpikeEvent:
    sample_id: int
    timestep: int
    source_neuron: int
    source_tile: int
    destination_neurons: tuple[int, ...]
    destination_tiles: tuple[int, ...]
    semantic: str = "spike"
    spike_time: Optional[float] = None
    phase: str = ""

@dataclass
class CountedWorkload:
    name: str
    spike_counts: np.ndarray
    populations: tuple[Population, ...]
    labels: np.ndarray
    predictions: np.ndarray
    training_mean_counts: np.ndarray
    metadata: dict[str, Any] = field(default_factory=dict)
    training_mean_activity: Optional[np.ndarray] = None
    sample_ids: Optional[tuple[int, ...]] = None
    dt_ms: float = 1.0

    def __post_init__(self):
        self.spike_counts = np.asarray(self.spike_counts)
        self.labels = np.asarray(self.labels)
        self.predictions = np.asarray(self.predictions)
        self.training_mean_counts = np.asarray(self.training_mean_counts)
        if self.training_mean_activity is not None:
            self.training_mean_activity = np.asarray(self.training_mean_activity)
        if self.sample_ids is None and self.spike_counts.ndim:
            self.sample_ids = tuple(range(self.spike_counts.shape[0]))
        self.populations = tuple(self.populations)
        self.validate()

    @property
    def timesteps(self):
        return self.spike_counts.shape[1]

    @property
    def accuracy(self):
        return float(np.mean(self.labels == self.predictions))

    def validate(self):
        counts = self.spike_counts
        if counts.ndim != 3 or not all(counts.shape):
            raise ValueError("spike_counts must have nonempty [sample, timestep, neuron] axes")
        if not np.issubdtype(counts.dtype, np.integer) or counts.min() < 0:
            raise ValueError("Native spike multiplicities must be nonnegative integers")
        if self.dt_ms <= 0 or not np.isfinite(self.dt_ms):
            raise ValueError("dt_ms must be finite and positive")
        samples, _, neurons = counts.shape
        if len(self.sample_ids) != samples or len(set(self.sample_ids)) != samples:
            raise ValueError("Each held-out sample requires one unique fixed ID")
        if any(int(i) != i or i < 0 for i in self.sample_ids):
            raise ValueError("Sample IDs must be nonnegative integers")
        if self.labels.shape != (samples,) or self.predictions.shape != (samples,):
            raise ValueError("Labels and predictions must cover every measured inference")
        names = {p.name for p in self.populations}
        if len(names) != len(self.populations):
            raise ValueError("Population names must be unique")
        covered = np.zeros(neurons, dtype=bool)
        for p in self.populations:
            if p.size < 1 or p.start < 0 or p.start + p.size > neurons:
                raise ValueError("Population range is outside the trace neuron axis")
            region = slice(p.start, p.start + p.size)
            if covered[region].any():
                raise ValueError("Population ranges overlap")
            covered[region] = True
            if any(target not in names for target in p.targets):
                raise ValueError("Connectivity refers to an unknown population")
            if p.mapping_statistic not in ("mean_count", "firing_probability"):
                raise ValueError("Unsupported training mapping statistic")
            if p.mapping_statistic == "firing_probability" and self.training_mean_activity is None:
                raise ValueError("Firing-probability mapping requires training_mean_activity")
        if not covered.all():
            raise ValueError("Every neuron must belong to exactly one declared population")
        scores = [self.training_mean_counts]
        if self.training_mean_activity is not None:
            scores.append(self.training_mean_activity)
            if np.any(self.training_mean_activity > 1):
                raise ValueError("Training firing probabilities must be in [0, 1]")
        for value in scores:
            if value.shape != (neurons,) or not np.all(np.isfinite(value)) or np.any(value < 0):
                raise ValueError("Training statistics require one finite nonnegative score per neuron")

    def sample_events(self, sample_id, mapping, exclude_local=False):
        """Expand only one sample, retaining every native spike occurrence.

        Local delivery is included by default, exactly as in the earlier suite.
        Every source occurrence multicasts to its union of target populations.
        Population/phase labels never alter the physical batching semantics.
        """
        sample_index = self.sample_ids.index(sample_id)
        by_name = {p.name: p for p in self.populations}
        result = []
        for population in self.populations:
            destinations = tuple(sorted({n for name in population.targets
                for n in range(by_name[name].start, by_name[name].start + by_name[name].size)}))
            if not destinations:
                continue
            for neuron in range(population.start, population.start + population.size):
                source = mapping[neuron]
                delivered_neurons = tuple(n for n in destinations if mapping[n] != source) if exclude_local else destinations
                tiles = tuple(sorted({mapping[n] for n in delivered_neurons}))
                if not tiles:
                    continue
                for timestep in np.flatnonzero(self.spike_counts[sample_index, :, neuron]):
                    event = CountedSpikeEvent(int(sample_id), int(timestep), neuron, source,
                        delivered_neurons, tiles, phase=population.name)
                    result.extend([event] * int(self.spike_counts[sample_index, timestep, neuron]))
        return tuple(sorted(result, key=lambda e: (e.timestep, e.source_tile, e.source_neuron)))

    def summary(self):
        active = [n for p in self.populations if p.targets for n in range(p.start, p.start + p.size)]
        firing = {}
        for p in self.populations:
            values = self.spike_counts[:, :, p.start:p.start + p.size]
            firing[p.name] = dict(mean_count=float(values.mean()),
                mean_firing_probability=float(np.count_nonzero(values) / values.size),
                spikes=int(values.sum(dtype=np.int64)))
        return dict(name=self.name, samples=len(self.sample_ids), sample_ids=list(self.sample_ids),
            timesteps=self.timesteps, dt_ms=self.dt_ms, accuracy=self.accuracy,
            neurons=self.spike_counts.shape[2], populations=[asdict(p) for p in self.populations],
            logical_spikes=int(self.spike_counts.sum(axis=(0, 1), dtype=np.int64)[active].sum()),
            population_activity=firing, metadata=self.metadata)

    def save(self, directory):
        """Persist arrays without pickle and a readable, hashed provenance sidecar."""
        directory = Path(directory)
        directory.mkdir(parents=True, exist_ok=True)
        archive = directory / (self.name + ".npz")
        temp = directory / (self.name + ".tmp.npz")
        arrays = dict(spike_counts=self.spike_counts, labels=self.labels,
            predictions=self.predictions, training_mean_counts=self.training_mean_counts)
        if self.training_mean_activity is not None:
            arrays["training_mean_activity"] = self.training_mean_activity
        np.savez_compressed(temp, **arrays)
        temp.replace(archive)
        manifest = self.summary()
        manifest["archive_sha256"] = hashlib.sha256(archive.read_bytes()).hexdigest()
        sidecar = archive.with_suffix(".json")
        temporary_sidecar = sidecar.with_suffix(".json.tmp")
        temporary_sidecar.write_text(json.dumps(manifest, indent=2, sort_keys=True) + "\n")
        temporary_sidecar.replace(sidecar)
        return archive

    @classmethod
    def load(cls, archive):
        archive = Path(archive)
        manifest = json.loads(archive.with_suffix(".json").read_text())
        if hashlib.sha256(archive.read_bytes()).hexdigest() != manifest["archive_sha256"]:
            raise ValueError("Trace archive hash does not match its provenance sidecar")
        with np.load(archive, allow_pickle=False) as arrays:
            kwargs = {name: arrays[name] for name in arrays.files}
        populations = tuple(Population(**{**p, "tiles": tuple(p["tiles"]),
            "targets": tuple(p["targets"])}) for p in manifest["populations"])
        return cls(name=manifest["name"], populations=populations,
            metadata=manifest["metadata"], sample_ids=tuple(manifest["sample_ids"]),
            dt_ms=manifest["dt_ms"], **kwargs)
from collections import Counter

import numpy as np

def build_mapping(workload, variant="activity_aware", seed=20260929):
    """Return global neuron ID -> endpoint, balancing each population's tiles.

    Population tile lists are the declared architecture layout. Thus 400 cells
    use 200/200 and 700 use 234/233/233, independent of the activity ordering.
    The LSM deterministic diagnostic is a seeded random liquid placement.
    """
    if variant not in ("simple", "activity_aware"):
        raise ValueError("Mapping must be simple or activity_aware")
    counts = np.asarray(workload.training_mean_counts)
    if counts.ndim != 1 or not np.all(np.isfinite(counts)) or np.any(counts < 0):
        raise ValueError("Training mapping scores must be finite nonnegative values")
    result = {}
    rng = np.random.default_rng(seed)
    for population in workload.populations:
        statistic = getattr(population, "mapping_statistic", "mean_count")
        if statistic in ("mean_count", "mean_counts", "event_count"):
            scores = counts
        elif statistic == "firing_probability":
            activity = getattr(workload, "training_mean_activity", None)
            if activity is None:
                raise ValueError("Firing-probability placement requires training_mean_activity")
            scores = np.asarray(activity)
            if (scores.shape != counts.shape or not np.all(np.isfinite(scores)) or
                    np.any(scores < 0) or np.any(scores > 1)):
                raise ValueError("Training firing probabilities must match neuron IDs and lie in [0, 1]")
        else:
            raise ValueError(f"Unknown training mapping statistic: {statistic}")
        tiles = tuple(population.tiles)
        if not tiles or len(set(tiles)) != len(tiles) or any(t not in range(16) for t in tiles):
            raise ValueError("Population requires distinct endpoint IDs in [0, 15]")
        ids = np.arange(population.start, population.start + population.size, dtype=int)
        if not len(ids) or ids[0] < 0 or ids[-1] >= len(scores):
            raise ValueError("Population lies outside training score vector")
        if any(int(n) in result for n in ids):
            raise ValueError("Population neuron ID ranges overlap")
        fixed = population.name in getattr(workload, "metadata", {}).get("mapping_fixed_populations", ())
        if fixed:
            pass
        elif variant == "activity_aware":
            ids = ids[np.lexsort((ids, -scores[ids]))]
        elif population.role in ("liquid", "recurrent") or "liquid" in population.name.lower():
            ids = rng.permutation(ids)
        quotient, remainder = divmod(len(ids), len(tiles))
        largest = quotient + bool(remainder)
        external = population.role in ("external_input", "input_external")
        if largest > 256 and not external:
            raise ValueError("Population placement exceeds 256 logical neurons per tile")
        offset = 0
        for index, tile in enumerate(tiles):
            count = quotient + (index < remainder)
            result.update((int(neuron), int(tile)) for neuron in ids[offset:offset + count])
            offset += count
    occupancy = Counter()
    readout = Counter()
    for population in workload.populations:
        if population.role in ("external_input", "input_external"):
            continue
        counts_on_tiles = Counter(result[n] for n in range(population.start, population.start + population.size))
        occupancy.update(counts_on_tiles)
        if population.role == "readout":
            readout.update(counts_on_tiles)
    for tile, count in occupancy.items():
        # The brief explicitly permits a tiny LSM readout colocated with a full
        # 256-cell liquid tile. It does not permit arbitrary hidden overflow.
        if count > 256 and not (count - readout[tile] <= 256 and 0 < readout[tile] <= 20):
            raise ValueError("Aggregate tile population exceeds 256 outside the small-readout colocation exception")
    return result

def mapping_summary(workload, mapping):
    """Report populations and occupancy, including explicitly external ingress."""
    populations = {}
    internal = Counter()
    external = Counter()
    for population in workload.populations:
        ids = range(population.start, population.start + population.size)
        counts = Counter(mapping[n] for n in ids)
        ingress = population.role in ("external_input", "input_external")
        (external if ingress else internal).update(counts)
        populations[population.name] = dict(neurons=population.size, role=population.role,
            neurons_per_tile=dict(sorted(counts.items())), external_ingress=ingress,
            training_mapping_statistic=getattr(population, "mapping_statistic", "mean_count"))
    return dict(populations=populations, internal_neurons_per_tile=dict(sorted(internal.items())),
        external_channels_per_ingress=dict(sorted(external.items())),
        max_internal_neurons_per_tile=max(internal.values(), default=0),
        capacity_note="Aggregate limit is 256, with an explicit exception for at most 20 colocated readout cells")
import numpy as np

THRESHOLDS = (8, 16, 32, 64)

def _weighted_quantile(values, weights, percentile):
    """Inverse CDF of the exact discrete spike-weighted distribution."""
    if not len(values):
        return 0.0
    index = np.searchsorted(np.cumsum(weights), percentile / 100 * np.sum(weights), side="left")
    return float(values[min(index, len(values) - 1)])

def batch_statistics(sizes):
    """Group and spike-weighted distributions, excluding inactive zero groups."""
    sizes = np.asarray(sizes)
    if np.any(sizes < 0) or np.any(sizes != np.floor(sizes)):
        raise ValueError("Natural group sizes must be nonnegative integers")
    sizes = sizes[sizes > 0].astype(np.int64, copy=False).ravel()
    values, frequencies = np.unique(sizes, return_counts=True)
    spike_weights = values * frequencies
    total = int(np.sum(spike_weights))
    result = dict(count=int(len(sizes)), spikes=total,
        mean=float(np.mean(sizes)) if len(sizes) else 0.0,
        median=float(np.median(sizes)) if len(sizes) else 0.0,
        max=int(np.max(sizes)) if len(sizes) else 0,
        histogram={int(v): int(f) for v, f in zip(values, frequencies)})
    weighted = dict(mean=float(np.sum(values * spike_weights) / total) if total else 0.0,
        median=_weighted_quantile(values, spike_weights, 50),
        histogram={int(v): float(w / total) for v, w in zip(values, spike_weights)})
    for percentile in (75, 90, 95, 99):
        result[f"p{percentile}"] = float(np.percentile(sizes, percentile)) if len(sizes) else 0.0
        weighted[f"p{percentile}"] = _weighted_quantile(values, spike_weights, percentile)
    for threshold in THRESHOLDS:
        result[f"p_ge_{threshold}"] = float(np.mean(sizes >= threshold)) if len(sizes) else 0.0
        fraction = float(np.sum(spike_weights[values >= threshold]) / total) if total else 0.0
        result[f"spike_fraction_ge_{threshold}"] = fraction
        weighted[f"p_ge_{threshold}"] = fraction
    result["spike_weighted"] = weighted
    return result

def destination_signatures(workload, mapping, exclude_local=False):
    """Return each source neuron's union of target-population endpoint sets.

    A liquid spike with recurrent and readout targets remains one source event.
    Local delivery follows an explicit convention shared by every NoC adapter.
    """
    by_name = {p.name: p for p in workload.populations}
    if len(by_name) != len(workload.populations):
        raise ValueError("Population names must be unique")
    tile_sets = {name: {mapping[n] for n in range(p.start, p.start + p.size)}
                 for name, p in by_name.items()}
    signatures = {}
    for population in workload.populations:
        destinations = set()
        for target in population.targets:
            if target not in tile_sets:
                raise ValueError(f"Unknown target population: {target}")
            destinations.update(tile_sets[target])
        for neuron in range(population.start, population.start + population.size):
            delivered = destinations - {mapping[neuron]} if exclude_local else destinations
            signatures[neuron] = tuple(sorted(delivered))
    return signatures

def _groups(workload, mapping, exclude_local=False, selected_population=None):
    counts = np.asarray(workload.spike_counts)
    if (counts.ndim != 3 or not np.issubdtype(counts.dtype, np.integer) or
            (counts.size and np.min(counts) < 0)):
        raise ValueError("Spike counts require a nonnegative integer [sample, timestep, neuron] array")
    signatures = destination_signatures(workload, mapping, exclude_local)
    indices = {}
    for population in workload.populations:
        if selected_population is not None and population.name != selected_population:
            continue
        for neuron in range(population.start, population.start + population.size):
            if signatures[neuron]:
                indices.setdefault((mapping[neuron], signatures[neuron]), []).append(neuron)
    groups, unique = {}, {}
    for key, neurons in sorted(indices.items()):
        activity = counts[:, :, neurons]
        groups[key] = np.sum(activity, axis=2, dtype=np.int64)
        unique[key] = np.count_nonzero(activity, axis=2)
    return groups, unique

def _flatten(groups):
    return np.concatenate([values.ravel() for values in groups.values()]) if groups else np.zeros(0, dtype=np.int64)

def analyze_workload(workload, mapping, exclude_local=False):
    """Analyze all held-out samples before any B_max or NoC execution.

    Groups are keyed by timestep, source endpoint and exact destination set.
    Multiplicity contributes repeated address events; unique active neurons are
    separately reported. Population diagnostics may overlap in target classes,
    but do not duplicate the full workload traffic.
    """
    groups, unique = _groups(workload, mapping, exclude_local)
    sample_count, timestep_count = np.asarray(workload.spike_counts).shape[:2]
    source_tiles = sorted({key[0] for key in groups})
    tile_counts = {tile: np.zeros((sample_count, timestep_count), dtype=np.int64) for tile in source_tiles}
    tile_unique = {tile: np.zeros((sample_count, timestep_count), dtype=np.int64) for tile in source_tiles}
    for key, values in groups.items():
        tile_counts[key[0]] += values
        tile_unique[key[0]] += unique[key]
    values = _flatten(tile_counts)
    active = _flatten(tile_unique)
    population_stats = {}
    for population in workload.populations:
        if not population.targets:
            continue
        phase_groups, phase_unique = _groups(workload, mapping, exclude_local, population.name)
        population_stats[population.name] = dict(targets=list(population.targets),
            natural_batch=batch_statistics(_flatten(phase_groups)),
            unique_active_neurons=batch_statistics(_flatten(phase_unique)),
            traffic_scope="One source spike multicasts to the union of all listed targets")
    per_sample = []
    for sample in range(sample_count):
        row = batch_statistics(np.concatenate([v[sample].ravel() for v in groups.values()])
                               if groups else [])
        row["sample_id"] = int(getattr(workload, "sample_ids", tuple(range(sample_count)))[sample])
        per_sample.append(row)
    histogram = batch_statistics(_flatten(groups))
    counts = np.asarray(workload.spike_counts)
    signatures = destination_signatures(workload, mapping, exclude_local)
    communicating_ids = [neuron for neuron, signature in signatures.items() if signature]
    counts_per_neuron = np.sum(counts, axis=(0, 1), dtype=np.int64)
    expected = int(np.sum(counts_per_neuron[communicating_ids], dtype=np.int64))
    population_total = sum(p["natural_batch"]["spikes"] for p in population_stats.values())
    if histogram["spikes"] != expected or population_total != expected:
        raise AssertionError("Natural groups did not conserve the communicating spike occurrences")
    all_spikes = int(np.sum(counts_per_neuron, dtype=np.int64))
    return dict(natural_batch=histogram,
        unique_active_neurons=batch_statistics(_flatten(unique)),
        source_tile_firing=dict(source_tiles=source_tiles, includes_inactive_timesteps=True,
            mean=float(np.mean(values)) if len(values) else 0.0,
            p95=float(np.percentile(values, 95)) if len(values) else 0.0,
            max=int(np.max(values)) if len(values) else 0,
            unique_active_mean=float(np.mean(active)) if len(active) else 0.0,
            unique_active_p95=float(np.percentile(active, 95)) if len(active) else 0.0,
            unique_active_max=int(np.max(active)) if len(active) else 0),
        by_population=population_stats, per_sample=per_sample,
        spike_accounting=dict(all_neuron_spike_occurrences=all_spikes,
            communication_spike_occurrences=expected,
            no_noc_spike_occurrences=all_spikes - expected,
            population_communication_sum=population_total, conservation_verified=True),
        local_delivery="excluded" if exclude_local else "included",
        grouping="same sample, native timestep, source tile and exact union destination set",
        multiplicity="Each integer spike occurrence contributes one source address; repetitions are retained",
        target_regime=bool(histogram["mean"] >= 12),
        preferred_regime=bool(histogram["mean"] >= 12 and histogram["spike_fraction_ge_16"] >= .40),
        regime_definitions=dict(target_regime="mean natural batch >= 12",
            preferred_regime="mean natural batch >= 12 and spike-weighted fraction in batches >= 16 is at least 0.40"))

def packet_count_at_cap(statistics, batch_max):
    """Exact Our Tree packet count inferred from the natural-size histogram."""
    if not isinstance(batch_max, int) or batch_max < 1:
        raise ValueError("batch_max must be a positive integer")
    histogram = statistics.get("histogram", statistics.get("natural_batch", {}).get("histogram", {}))
    return sum(((int(size) + batch_max - 1) // batch_max) * int(count)
               for size, count in histogram.items())
