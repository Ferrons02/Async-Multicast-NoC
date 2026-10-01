"""Real depth-2 golden codec and LUT event simulator, with packed spike payloads."""
from collections import Counter, defaultdict
from functools import lru_cache
import heapq
import math

from .config import ComparisonConfig
from .helpers import distribution, empty_result
from .helpers import legacy
from evaluation.golden_model.router import Packet
from evaluation.golden_model.router import evaluate
from evaluation.golden_model.router import TAIL_MASK, FLAG_BITS
from evaluation.golden_model.router import Tree


def pack_addresses(addresses, address_bits=10):
    """Pack addresses; reserve the all-ones tag to mark padding unambiguously.

    This endpoint framing convention uses no router flag changes or count
    side-channel. It costs one source tag (1023); the workload's maximum is 717.
    """
    if not addresses:
        raise ValueError('A packet must contain at least one source address')
    if any(type(v) is not int or not 0 <= v < (1 << address_bits)-1 for v in addresses):
        raise ValueError('Source address does not fit the tag or uses reserved padding tag')
    bits = sum(value << (i * address_bits) for i, value in enumerate(addresses))
    useful = len(addresses)*address_bits
    padded = math.ceil(useful/28)*28
    bits |= ((1 << (padded-useful))-1) << useful
    return tuple((bits >> shift) & ((1 << 28)-1)
                 for shift in range(0, len(addresses)*address_bits, 28))


def unpack_addresses(payload, count=None, address_bits=10):
    """Decode solely from received flits; an optional count checks the result."""
    if not payload or any(not 0 <= p < 1 << 28 for p in payload):
        raise ValueError('Invalid payload')
    bits = sum(value << (i*28) for i, value in enumerate(payload))
    slots, residual = divmod(len(payload)*28,address_bits)
    sentinel = (1 << address_bits)-1
    addresses = [(bits >> (i*address_bits)) & sentinel for i in range(slots)]
    while addresses and addresses[-1] == sentinel:
        addresses.pop()
    if (not addresses or sentinel in addresses or
        (bits >> (slots*address_bits)) != (1 << residual)-1 or
        len(payload) != math.ceil(len(addresses)*address_bits/28)):
        raise ValueError('Invalid endpoint padding/framing')
    if count is not None and count != len(addresses):
        raise ValueError('Payload address count differs from reference')
    return tuple(addresses)


@lru_cache(maxsize=2048)
def _template(source, destinations, payload_count, tree_config):
    # Dummy values are replaced in every stream of each fresh clone below.
    return legacy.models.compile_tree(
        Packet(0, source, destinations, (0,)*payload_count, 'multicast'), tree_config)


def compile_batch(batch, packet_id, release_ps, tree_config):
    """Clone only immutable route structure; never reuse contention state."""
    addresses = tuple(batch.addresses)
    payload = pack_addresses(addresses)
    packet = Packet(packet_id, batch.source_tile, tuple(batch.destination_tiles),
                    payload, 'multicast', release_ps)
    template = _template(packet.source_leaf, packet.destinations, len(payload), tree_config)
    streams = defaultdict(list)
    for op in template.operations:
        streams[(op.node, op.port)].append(op)
    words = {}
    for stream in streams.values():
        data = [op for op in stream if not op.feature['control']]
        if len(data) != len(payload):
            raise AssertionError('Golden compiler payload stream changed')
        words.update((op, (payload[i] << FLAG_BITS) | (TAIL_MASK if i == len(payload)-1 else 0))
                     for i, op in enumerate(data))
    mapping = {o: legacy.models.Operation(packet_id, o.node, o.port, o.index,
                    words.get(o, o.word), o.cls, o.multicast, dict(o.feature), requested=release_ps)
               for o in template.operations}
    for original, clone in mapping.items():
        clone.previous = mapping.get(original.previous)
        clone.outputs = [legacy.models.Transmission(
            tr.output, mapping.get(tr.child), words.get(original, tr.word), tr.physical,
            tr.destination, tr.payload_index) for tr in original.outputs]
    return legacy.models.Program(packet, 'Tree', list(mapping.values()),
        [mapping[o] for o in template.injected], template.injection_link, template.route_bits)


class BatchSimulator(legacy.sim.Simulator):
    def __init__(self, config):
        super().__init__('Tree', config.tree_config(), legacy.config.load_luts(config.lut_path))
        self.received_words = defaultdict(dict)
        self.service_wait_ps = 0.

    def admit(self, key, scheduled):
        op = self.inputs[key][0][0] if self.inputs[key] else None
        prior = op.accepted if op is not None else None
        if op is not None:
            port = op.node, op.port
            available = (self.port_last_accept.get(port, -float('inf')) + self.parameters(op)[1]
                         if self.incoming_ii else self.port_next[port])
        super().admit(key, scheduled)
        if op is not None and prior is None and op.accepted is not None:
            self.service_wait_ps += max(0., min(op.accepted, available)-op.arrived)

    def until_delivered(self, message_ids):
        """Stop at intended completion, retaining recovery events for next step."""
        expected = sum(len(self.programs[mid].packet.destinations) *
                       len(self.programs[mid].packet.payload) for mid in message_ids)
        # Incremental endpoint delivery count avoids scanning packets every event.
        self._boundary_ids = set(message_ids)
        self._boundary_delivered = 0
        while self.events and self._boundary_delivered < expected:
            self.now, _, callback, args = heapq.heappop(self.events)
            callback(*args)
            self.total_events += 1
        if self._boundary_delivered != expected:
            raise RuntimeError('Tree stalled before all intended spike payloads arrived')
        self._boundary_ids.clear()

    def deliver(self, op, tr, callback):
        if tr.payload_index is not None:
            self.received_words[op.message][(tr.destination, tr.payload_index)] = tr.word
            if op.message in getattr(self, '_boundary_ids', ()):
                self._boundary_delivered += 1
        super().deliver(op, tr, callback)


def run(events, config=None, batch_max=1):
    from .helpers import chunk_batches
    config = config or ComparisonConfig()
    events = tuple(events)
    if len({e.sample_id for e in events}) > 1:
        raise ValueError('Run one inference sample at a time')
    batches = chunk_batches(events, batch_max)
    result = empty_result('our_tree')
    result['logical_spikes'] = len(events)
    sim = BatchSimulator(config)
    timestep_batches = defaultdict(list)
    for batch in batches:
        timestep_batches[batch.timestep].append(batch)
    latencies, phase_rows = [], []
    mid = 0
    max_input = 0
    expected_addresses = Counter((e.timestep, d, e.source_neuron, e.semantic)
                                 for e in events for d in e.destination_tiles)
    received_addresses = Counter()
    for timestep, group in sorted(timestep_batches.items()):
        start = sim.now
        packet_batches = {}
        for batch in group:
            program = compile_batch(batch, mid, start, sim.config)
            sim.add_program(program)
            packet_batches[mid] = batch
            mid += 1
        sim.until_delivered(packet_batches)
        phase_rows.append(dict(timestep=timestep, start_ns=start/1000.,
                               completion_ns=sim.now/1000., duration_ns=(sim.now-start)/1000.))
        for packet_id, batch in packet_batches.items():
            program = sim.programs[packet_id]
            packet = program.packet
            copies = sim.deliveries[packet_id]
            if set(copies) != {(d,k) for d in packet.destinations for k in range(len(packet.payload))}:
                raise AssertionError('Exact tree payload conservation failed')
            for dest in packet.destinations:
                words = [sim.received_words[packet_id][dest,k] for k in range(len(packet.payload))]
                if [bool(w & TAIL_MASK) for w in words] != [False]*(len(words)-1)+[True]:
                    raise AssertionError('Incorrect payload tail')
                decoded = unpack_addresses([w >> FLAG_BITS for w in words])
                if decoded != tuple(batch.addresses):
                    raise AssertionError('Received addresses differ from injected addresses')
                received_addresses.update((timestep, dest, address, batch.semantic) for address in decoded)
            latencies.append(max(v['time_ps'] for v in copies.values())/1000.-start/1000.)
            result['physical_packets'] += 1
            result['route_setup_count'] += 1
            result['physical_flits'] += len(program.injected)
            result['route_flits'] += len(program.injected)-len(packet.payload)
            result['payload_flits'] += len(packet.payload)
            result['router_traversals'] += len(program.operations)
            transmissions = [tr for op in program.operations for tr in op.outputs]
            result['link_traversals'] += len(program.injected)+len(transmissions)
            result['switched_link_length_um'] += (
                len(program.injected)*program.injection_link['length_um']+
                sum(tr.physical['length_um'] for tr in transmissions))
            energy = sim.energy[packet_id]
            result['router_energy_pj'] += energy['router_fj']/1000.
            result['wire_energy_pj'] += energy['wire_fj']/1000.
            result['route_energy_pj'] += energy['route_fj']/1000.
            result['queueing_time_ns'] += max(0.,program.injected[0].arrived-start-
                                             program.injection_link['delay_ps'])/1000.
            for op in program.operations:
                result['queueing_time_ns'] += max(0., op.accepted-op.arrived)/1000.
                result['service_occupancy_ns'] += op.ii/1000.
                result['recovery_occupancy_ns'] = result.get('recovery_occupancy_ns',0.)+max(0.,op.ii-op.intrinsic)/1000.
            # Old callbacks only carry physical wakeup keys; all data operations
            # have retired at exact completion. Keep resource clocks/owners.
            del sim.programs[packet_id], sim.deliveries[packet_id], sim.energy[packet_id]
            del sim.received_words[packet_id]
        max_input = max(max_input, max(sim.high_water.values(), default=0))
    if received_addresses != expected_addresses:
        raise AssertionError('Batched and unbatched logical address multisets differ')
    result.update(noc_inference_latency_ns=sum(r['duration_ns'] for r in phase_rows),
                  mean_packet_latency_ns=distribution(latencies)['mean'],
                  p95_packet_latency_ns=distribution(latencies)['p95'],
                  total_energy_pj=result['router_energy_pj']+result['wire_energy_pj'],
                  service_stall_time_ns=sim.service_wait_ps/1000.,
                  timestep_metrics=phase_rows, max_input_occupancy=max_input,
                  payload_delivery_verified=True, events_processed=sim.total_events,
                  service_stall_definition='Input arrival-to-service-eligibility waiting, bounded by actual admission',
                  queueing_definition='Sum of source packet serialization waiting and input arrival-to-admission waiting; tree output backpressure separately implicit in finite-slot admission')
    return result
