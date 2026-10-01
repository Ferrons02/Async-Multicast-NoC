"""Observe exact phase accounting while delegating the unchanged baseline engines.

Only the final metrics hook is specialized. Injection, arbitration, buffering,
wire timing, HBS false positives and timestep barriers execute the original code.
No module globals are mutated; copied functions bind the observation subclass in
an isolated namespace. A baseline run remains independent of the Our Tree cap.
"""
from collections import defaultdict
import math
from statistics import mean
from types import FunctionType

from . import hbs_tree, single_flit, sync_mesh


def _bind(function, **bindings):
    globals_copy = dict(function.__globals__)
    globals_copy.update(bindings)
    bound = FunctionType(function.__code__, globals_copy, function.__name__,
                         function.__defaults__, function.__closure__)
    bound.__kwdefaults__ = function.__kwdefaults__
    return bound


class PhaseObserver(single_flit.SingleFlitSimulator):
    """Final-state observer; it does not override any scheduling operation."""

    def metrics(self, architecture, latency_ns):
        result = super().metrics(architecture, latency_ns)
        phases = defaultdict(lambda: dict(logical_spikes=0, physical_packets=0,
            router_energy_pj=0., wire_energy_pj=0., filter_energy_pj=0.,
            total_energy_pj=0., illegal_deliveries=0,
            phase_completion_duration_ns=0., critical_barrier_charge_ns=0.))
        packet_latencies = defaultdict(list)
        timestep_phases = defaultdict(dict)
        releases = {}
        route_energy = {}
        for packet in self.packets:
            phase = packet._phase_name
            timestep = packet._native_timestep
            row = phases[phase]
            row["logical_spikes"] += 1
            row["physical_packets"] += 1
            route_key = packet.source, packet.intended, packet.delivered
            if route_key not in route_energy:
                router = 0.
                wire = self.physical(packet.injection_length_um)[1]
                pending = [packet.root]
                while pending:
                    node = pending.pop()
                    fanout = len(node.outputs)
                    shared = self.config.energy_shared_fraction
                    router += (self.config.packet_bits * self.config.router_energy_pj_bit *
                               (shared + (1 - shared) * fanout))
                    for edge in node.outputs:
                        wire += self.physical(edge.length_um)[1]
                        if edge.child is not None:
                            pending.append(edge.child)
                route_energy[route_key] = router, wire
            router, wire = route_energy[route_key]
            illegal = len(set(packet.received) - set(packet.intended))
            filter_energy = illegal * self.config.filter_energy_pj
            row["router_energy_pj"] += router
            row["wire_energy_pj"] += wire
            row["filter_energy_pj"] += filter_energy
            row["illegal_deliveries"] += illegal
            completion = max(packet.received[d] for d in packet.intended)
            packet_latencies[phase].append((completion - packet.release) * self.scale)
            if timestep in releases and releases[timestep] != packet.release:
                raise AssertionError("A native timestep has inconsistent packet release times")
            releases[timestep] = packet.release
            timestep_phases[timestep][phase] = max(timestep_phases[timestep].get(phase, -math.inf), completion)
        for timestep, completions in timestep_phases.items():
            finish = max(completions.values())
            duration = (finish - releases[timestep]) * self.scale
            critical = [phase for phase, end in completions.items() if end == finish]
            for phase, end in completions.items():
                phases[phase]["phase_completion_duration_ns"] += (end - releases[timestep]) * self.scale
            for phase in critical:
                phases[phase]["critical_barrier_charge_ns"] += duration / len(critical)
        for phase, row in phases.items():
            row["total_energy_pj"] = row["router_energy_pj"] + row["wire_energy_pj"] + row["filter_energy_pj"]
            row["mean_packet_latency_ns"] = mean(packet_latencies[phase])
            row["participating_physical_packets"] = row["physical_packets"]
            row["noc_inference_latency_ns"] = row["phase_completion_duration_ns"]
            row["additive_barrier_charge_ns"] = row["critical_barrier_charge_ns"]
        for metric in ("logical_spikes", "physical_packets", "router_energy_pj", "wire_energy_pj",
                       "filter_energy_pj", "total_energy_pj", "illegal_deliveries"):
            attributed = sum(row[metric] for row in phases.values())
            if not math.isclose(attributed, result[metric], rel_tol=1e-10, abs_tol=1e-8):
                raise AssertionError(f"Phase accounting failed to conserve {metric}: {attributed} vs {result[metric]}")
        if not math.isclose(sum(row["critical_barrier_charge_ns"] for row in phases.values()),
                            latency_ns, rel_tol=1e-10, abs_tol=1e-8):
            raise AssertionError("Critical-phase barrier charges do not sum to shared inference latency")
        result["phase_metrics"] = dict(sorted(phases.items()))
        result["phase_accounting"] = dict(
            energy="Exact energy of each source population's packets over their full physical route, including HBS illegal branches and final drain",
            packet_count="One baseline packet per source spike occurrence; multicast target classes are not duplicate source events",
            phase_completion_duration_ns="Sum across native timesteps of last useful delivery for this phase minus the shared timestep release; overlaps other phases and is nonadditive",
            noc_inference_latency_ns="Alias of phase_completion_duration_ns; nonadditive across source phases",
            critical_barrier_charge_ns="Each shared timestep duration is charged to its last-completing source phase; exact ties split equally. Additive accounting convention, not causal latency savings",
            additive_barrier_charge_ns="Alias of critical_barrier_charge_ns",
            scheduling="Original baseline event engine and timestep scheduling are unchanged")
        return result


def _observed_simulate(events, config, compile_packet, architecture, *, synchronous=False):
    def compile_observed(event, packet_id, packet_config):
        packet = compile_packet(event, packet_id, packet_config)
        packet._phase_name = getattr(event, "phase", "") or "unclassified"
        packet._native_timestep = event.timestep
        return packet

    simulate = _bind(single_flit.simulate, SingleFlitSimulator=PhaseObserver)
    return simulate(events, config, compile_observed, architecture, synchronous=synchronous)


def run(events, config=None, architecture="hbs_tree", batch_max=1):
    """Run HBS or mesh with observation-only, additive energy attribution."""
    adapters = {"hbs_tree": hbs_tree, "sync_mesh": sync_mesh}
    if architecture not in adapters:
        raise ValueError("Phase baseline architecture must be hbs_tree or sync_mesh")
    adapter = adapters[architecture]
    delegated = _bind(adapter.run, simulate=_observed_simulate)
    return delegated(events, config, batch_max=batch_max)
