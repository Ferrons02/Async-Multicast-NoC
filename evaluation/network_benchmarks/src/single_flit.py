"""Finite-buffer single-flit multicast event engine for the external baselines.

This is deliberately separate from the existing variable-length packet engine:
xpipes has two input *and* two output slots, whereas the published Mousetrap
switch has one of each. A blocked multicast branch retains the input until all
copies enter their independently arbitrated output buffers. Receiver slots are
reserved before a link launch; no unbounded queue is hidden behind a link.

Synchronous time is represented by integer clock ticks. The primary model folds
a wire that fits one clock into the single-cycle hop budget; registered-link
timing is an explicit alternative because the paper does not establish the
network clock-boundary placement. Neither uses the old five-stage mesh.
"""
from collections import defaultdict, deque
from dataclasses import dataclass, field
import heapq
import itertools
import math
from statistics import mean

from .helpers import wire


@dataclass(eq=False)
class RouteNode:
    router: object
    input_port: object
    outputs: list = field(default_factory=list)
    packet: object = None
    arrival: float = None
    start: float = None
    ready: float = None
    pending: int = 0


@dataclass(eq=False)
class Edge:
    port: object
    length_um: float
    child: object = None
    destination: int = None


@dataclass(eq=False)
class SinglePacket:
    packet_id: int
    source: int
    address: int
    intended: tuple
    delivered: tuple
    root: RouteNode
    injection_length_um: float
    release: float = 0.
    received: dict = field(default_factory=dict)

    def attach(self):
        stack = [self.root]
        while stack:
            node = stack.pop()
            node.packet = self
            stack.extend(edge.child for edge in node.outputs if edge.child is not None)


class SingleFlitSimulator:
    """Deterministic round-robin switches, bounded queues and backpressure."""

    def __init__(self, config, *, synchronous=False):
        self.config = config
        self.synchronous = synchronous
        self.scale = config.clock_period_ns if synchronous else 1.
        self.forward = 1 if synchronous else config.forward_latency_ns
        self.service = 1 if synchronous else config.service_interval_ns
        if self.forward <= 0 or self.service < self.forward:
            raise ValueError('Require 0 < forward latency <= service interval')
        if min(config.input_slots, config.output_slots) < 1:
            raise ValueError('Finite positive input and output capacities required')
        if not 0 <= config.energy_shared_fraction <= 1:
            raise ValueError('Shared energy fraction must lie in [0, 1]')
        self.recovery = self.service - self.forward
        self.now = 0
        self.events = []
        self.sequence = itertools.count()
        self.scheduled = {}
        self.inputs = defaultdict(deque)
        self.outputs = defaultdict(deque)
        self.requests = defaultdict(dict)
        self.input_next = defaultdict(float)
        self.output_next = defaultdict(float)
        self.source_next = defaultdict(float)
        self.sources = defaultdict(deque)
        self.receiver_waiters = defaultdict(set)
        self.last_grant = {}
        self.input_high_water = 0
        self.output_high_water = 0
        self.packets = []
        self.counters = defaultdict(float)
        self.timeline = []
        self._physical_cache = {}

    def at(self, when, callback, *args):
        if when < self.now - 1e-10:
            raise AssertionError('Event travelled backwards')
        heapq.heappush(self.events, (max(when, self.now), next(self.sequence), callback, args))

    def wake(self, token, when, callback, *args):
        when = max(self.now, when)
        if self.scheduled.get(token, math.inf) <= when:
            return
        self.scheduled[token] = when

        def execute():
            if self.scheduled.get(token) != when:
                return
            self.scheduled.pop(token)
            callback(*args)

        self.at(when, execute)

    @staticmethod
    def key(node):
        return node.router, node.input_port

    def physical(self, length):
        if length in self._physical_cache:
            return self._physical_cache[length]
        result = wire(length, self.config.packet_bits,
                      activity=self.config.wire_activity, vdd=self.config.wire_vdd,
                      resistance_ohm_um=self.config.resistance_ohm_um,
                      capacitance_ff_um=self.config.capacitance_ff_um)
        delay = result['delay_ns']
        if self.synchronous:
            delay = int(math.ceil(delay / self.scale - 1e-12))
            if self.config.wire_timing == 'integrated_cycle':
                # The one-cycle switch traversal already supplies a capture
                # boundary. Only a wire longer than its budget adds stages.
                delay = max(0, delay - 1)
            elif self.config.wire_timing != 'registered_link':
                raise ValueError('Unknown synchronous wire timing convention')
        self._physical_cache[length] = delay, result['energy_pj']
        return self._physical_cache[length]

    def account_link(self, length):
        delay, energy = self.physical(length)
        self.counters['link_traversals'] += 1
        self.counters['switched_link_length_um'] += length
        self.counters['switched_bit_length_um'] += length * self.config.packet_bits
        self.counters['wire_energy_pj'] += energy
        return delay

    def add(self, packet):
        packet.attach()
        packet.release = self.now
        self.packets.append(packet)
        self.sources[packet.source].append(packet)
        self.wake(('source', packet.source), self.now, self.inject, packet.source)

    def reserve(self, node):
        key = self.key(node)
        if len(self.inputs[key]) >= self.config.input_slots:
            return False
        self.inputs[key].append(node)
        self.input_high_water = max(self.input_high_water, len(self.inputs[key]))
        return True

    def inject(self, source):
        if not self.sources[source]:
            return
        if self.source_next[source] > self.now:
            self.wake(('source', source), self.source_next[source], self.inject, source)
            return
        packet = self.sources[source][0]
        if not self.reserve(packet.root):
            self.receiver_waiters[self.key(packet.root)].add(('source', source))
            return
        self.sources[source].popleft()
        self.counters['source_queueing_time'] += self.now - packet.release
        self.source_next[source] = self.now + self.service
        delay = self.account_link(packet.injection_length_um)
        self.at(self.now + delay, self.arrive, packet.root)
        if self.sources[source]:
            self.wake(('source', source), self.source_next[source], self.inject, source)

    def arrive(self, node):
        node.arrival = self.now
        key = self.key(node)
        self.wake(('input', key), max(self.now, self.input_next[key]), self.start, key)

    def start(self, key):
        if not self.inputs[key]:
            return
        node = self.inputs[key][0]
        if node.arrival is None or node.start is not None:
            return
        if self.input_next[key] > self.now:
            self.wake(('input', key), self.input_next[key], self.start, key)
            return
        node.start = self.now
        node.ready = self.now + self.forward
        node.pending = len(node.outputs)
        self.counters['input_queueing_time'] += self.now - node.arrival
        self.counters['service_stall_time'] += max(0, self.input_next[key] - node.arrival)
        self.counters['router_traversals'] += 1
        fanout = len(node.outputs)
        self.counters['router_output_copies'] += fanout
        shared = self.config.energy_shared_fraction
        self.counters['router_energy_pj'] += (self.config.packet_bits *
            self.config.router_energy_pj_bit * (shared + (1 - shared) * fanout))
        self.counters['forward_occupancy_time'] += self.forward
        self.counters['recovery_occupancy_time'] += self.recovery
        self.at(node.ready, self.ready, node)

    def ready(self, node):
        if not node.outputs:
            raise ValueError('Route node has no output')
        for edge in node.outputs:
            key = node.router, edge.port
            inp = self.key(node)
            if inp in self.requests[key]:
                raise AssertionError('Input requested an output twice')
            self.requests[key][inp] = node, edge
            self.wake(('fill', key), self.now, self.fill, key)

    def fill(self, key):
        # Each output arbitrates independently: one blocked branch cannot stop
        # already-ready copies going to different destinations.
        while self.requests[key] and len(self.outputs[key]) < self.config.output_slots:
            candidates = sorted(self.requests[key], key=repr)
            last = self.last_grant.get(key, '')
            selected = next((c for c in candidates if repr(c) > last), candidates[0])
            node, edge = self.requests[key].pop(selected)
            self.last_grant[key] = repr(selected)
            self.outputs[key].append((node, edge, self.now))
            self.output_high_water = max(self.output_high_water, len(self.outputs[key]))
            self.counters['arbitration_queueing_time'] += self.now - node.ready
            node.pending -= 1
            if node.pending == 0:
                self.retire(node)
        self.wake(('send', key), max(self.now, self.output_next[key]), self.send, key)

    def retire(self, node):
        key = self.key(node)
        if self.inputs[key].popleft() is not node:
            raise AssertionError('Non-FIFO retirement')
        # A late branch acknowledgement delays reopening the input resource.
        self.input_next[key] = max(node.start + self.service, self.now + self.recovery)
        self.counters['blocked_input_time'] += max(0, self.now - node.ready)
        self.wake(('input', key), self.input_next[key], self.start, key)
        for kind, waiting in sorted(self.receiver_waiters.pop(key, set()), key=repr):
            if kind == 'source':
                self.wake(('source', waiting), self.now, self.inject, waiting)
            else:
                self.wake(('send', waiting), self.now, self.send, waiting)

    def send(self, key):
        if not self.outputs[key]:
            return
        if self.output_next[key] > self.now:
            self.wake(('send', key), self.output_next[key], self.send, key)
            return
        node, edge, enqueued = self.outputs[key][0]
        if edge.child is not None and not self.reserve(edge.child):
            self.receiver_waiters[self.key(edge.child)].add(('send', key))
            return
        self.outputs[key].popleft()
        self.output_next[key] = self.now + self.service
        self.counters['output_queueing_time'] += self.now - enqueued
        delay = self.account_link(edge.length_um)
        if edge.child is None:
            self.at(self.now + delay, self.deliver, node.packet, edge.destination)
        else:
            self.at(self.now + delay, self.arrive, edge.child)
        self.wake(('fill', key), self.now, self.fill, key)
        if self.outputs[key]:
            self.wake(('send', key), self.output_next[key], self.send, key)

    def deliver(self, packet, destination):
        if destination in packet.received:
            raise AssertionError('Duplicate destination delivery')
        packet.received[destination] = self.now
        self.counters['destination_deliveries'] += 1
        if destination not in packet.intended:
            self.counters['illegal_deliveries'] += 1
            self.counters['filter_operations'] += 1
        else:
            self.counters['intended_deliveries'] += 1

    def step(self):
        if not self.events:
            raise RuntimeError('Network deadlocked with undelivered intended packets')
        self.now, _, callback, args = heapq.heappop(self.events)
        callback(*args)

    def run_timestep(self, packets):
        begin = self.now
        target = self.counters['intended_deliveries'] + sum(len(p.intended) for p in packets)
        for packet in packets:
            self.add(packet)
        while self.counters['intended_deliveries'] < target:
            self.step()
        self.timeline.append(dict(start_ns=begin * self.scale,
                                  intended_complete_ns=self.now * self.scale,
                                  packets=len(packets)))
        return (self.now - begin) * self.scale

    def finish(self):
        while self.events:
            self.step()
        for packet in self.packets:
            if set(packet.received) != set(packet.delivered):
                raise AssertionError('Physical delivery set disagrees with compiled route')
        if any(self.inputs.values()) or any(self.outputs.values()) or any(self.sources.values()):
            raise AssertionError('Network did not drain')

    def metrics(self, architecture, latency_ns):
        self.finish()
        c = self.counters
        latencies = sorted((max(p.received[d] for d in p.intended) - p.release) * self.scale
                           for p in self.packets)
        filter_energy = c['filter_operations'] * self.config.filter_energy_pj
        result = dict(architecture=architecture, logical_spikes=len(self.packets),
            physical_packets=len(self.packets), physical_flits=len(self.packets),
            packet_bits=self.config.packet_bits, route_setup_count=0,
            route_setup_flits=0, payload_flits=len(self.packets),
            noc_inference_latency_ns=latency_ns,
            mean_packet_latency_ns=mean(latencies) if latencies else 0.,
            p95_packet_latency_ns=latencies[max(0, math.ceil(.95 * len(latencies)) - 1)] if latencies else 0.,
            queueing_time_ns=sum(c[k] for k in ('source_queueing_time', 'input_queueing_time',
                                'arbitration_queueing_time', 'output_queueing_time')) * self.scale,
            service_stall_time_ns=c['service_stall_time'] * self.scale,
            forward_occupancy_ns=c['forward_occupancy_time'] * self.scale,
            recovery_occupancy_ns=c['recovery_occupancy_time'] * self.scale,
            blocked_input_time_ns=c['blocked_input_time'] * self.scale,
            router_energy_pj=c['router_energy_pj'], wire_energy_pj=c['wire_energy_pj'],
            filter_energy_pj=filter_energy,
            total_energy_pj=c['router_energy_pj'] + c['wire_energy_pj'] + filter_energy,
            max_input_occupancy=self.input_high_water, max_output_occupancy=self.output_high_water,
            physical_drain_time_ns=self.now * self.scale,
            timestep_timeline=self.timeline,
            router_count=16 if self.synchronous else 5,
            input_slots=self.config.input_slots, output_slots=self.config.output_slots,
            forward_latency_ns=self.forward * self.scale,
            service_interval_ns=self.service * self.scale,
            recovery_interval_ns=self.recovery * self.scale)
        for key in ('router_traversals', 'link_traversals', 'illegal_deliveries',
                    'filter_operations', 'destination_deliveries', 'router_output_copies'):
            result[key] = int(c[key])
        for key in ('switched_link_length_um', 'switched_bit_length_um'):
            result[key] = c[key]
        return result


def simulate(events, config, compile_packet, architecture, *, synchronous=False):
    """One immutable sample; boundaries wait only for useful delivery.

    Illegal HBS copies and resource recovery persist across timestep boundaries.
    All remaining copies drain after the final useful completion for accounting.
    """
    events = tuple(events)
    if len({getattr(event, 'sample_id', 0) for event in events}) > 1:
        raise ValueError('Run one inference sample at a time')
    groups = defaultdict(list)
    for event in events:
        if not event.destination_tiles:
            raise ValueError('Communication events require at least one destination')
        groups[event.timestep].append(event)
    sim = SingleFlitSimulator(config, synchronous=synchronous)
    latency = 0.
    packet_id = itertools.count()
    for timestep in sorted(groups):
        packets = [compile_packet(event, next(packet_id), config) for event in groups[timestep]]
        latency += sim.run_timestep(packets)
    return sim.metrics(architecture, latency)
