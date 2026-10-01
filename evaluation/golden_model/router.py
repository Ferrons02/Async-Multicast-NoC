"""Shared Router oracle, packet codec, LUT validation, and elastic NoC simulation."""
from pathlib import Path
ROOT = Path(__file__).resolve().parent
DEFAULT_LUT = ROOT / "router_luts.json"


# Protocol
FLIT_BITS = 32

FLAG_BITS = 4

PAYLOAD_BITS = FLIT_BITS - FLAG_BITS

FLIT_MASK = (1 << FLIT_BITS) - 1

FLAG_MASK = (1 << FLAG_BITS) - 1

PAYLOAD_MASK = (1 << PAYLOAD_BITS) - 1

TAIL_MASK = 1 << 0

MLTC_MASK = 1 << 1

RESERVED_FLAG_MASK = FLAG_MASK & ~(TAIL_MASK | MLTC_MASK)


# Router
from typing import Dict, List, Sequence, Tuple

class ProtocolError(ValueError):
    """Malformed input or traffic outside the verified hardware domain."""

class HardwareLimitError(ProtocolError):
    """A valid abstract route exceeds the selected counter or framing model."""

def counter_limit(counter_bits: int) -> int:
    """Keep the physical eight-bit default while allowing explicit models."""
    if type(counter_bits) is not int or not 1 <= counter_bits <= 32:
        raise ValueError("Counter width must be an integer in 1..32 bits")
    return (1 << counter_bits) - 1

def validate_packet(words: Sequence[int]) -> None:
    if not words or any(type(w) is not int or not 0 <= w < 2**FLIT_BITS for w in words):
        raise ProtocolError("A packet must contain unsigned 32-bit words")
    if not words[-1] & TAIL_MASK or any(w & TAIL_MASK for w in words[:-1]):
        raise ProtocolError("Only the last word may carry the tail bit (bit 0)")

def shift_route(word: int, bits: int) -> int:
    """Consume MSBs of bits 31:13, zero-fill, preserve bits 12:0."""
    return (((word >> 13) << bits) & 0x7FFFF) << 13 | (word & 0x1FFF)

def pack_nibbles(nibbles: Sequence[int], *, terminate: bool = False) -> List[int]:
    """Deserializer packing: high 28 bits, seven nibbles, low nibble 0010.

    Without terminate=True, packing reproduces the legacy empty-flush behavior.
    Explicit termination appends a zero nibble for source injection or for a
    nonempty branch in the corrected protocol.
    """
    values = list(nibbles) + ([0] if terminate else [])
    if any(type(n) is not int or not 0 <= n < 16 for n in values):
        raise ProtocolError("A multicast routing nibble must be in 0..15")
    result = []
    for start in range(0, len(values), 7):
        chunk = values[start:start+7]
        word = MLTC_MASK
        for index, value in enumerate(chunk):
            word |= value << (28 - 4*index)
        result.append(word)
    return result

def split_multicast(words: Sequence[int]) -> Tuple[List[int], List[int]]:
    """InputRouter switches to payload after a word whose bits 7:4 are zero."""
    for index, word in enumerate(words):
        if word & TAIL_MASK:
            raise ProtocolError("Tail reached while InputRouter still expects routing words")
        if word & 0xF0 == 0:
            route = [w >> shift & 15 for w in words[:index+1]
                     for shift in range(28, 3, -4)]
            payload = list(words[index+1:])
            if not payload:
                raise ProtocolError("Multicast has no payload/tail after its route")
            return route, payload
    raise ProtocolError("Multicast route has no terminal word (bits 7:4 = 0)")

def multicast_outputs(words: Sequence[int], *, counter_bits: int = 8,
                      terminate_branches: bool = False) -> Dict[int, List[int]]:
    """QuadRouter distributes breadth-first routing nibbles to child streams.

    A zero at a level boundary flushes all four deserializers. The default
    follows the characterized legacy netlist: eight-bit counters and no output
    from an empty flush. Callers select corrected branch termination explicitly;
    counter widths above eight bits remain architectural assumptions.
    """
    maximum = counter_limit(counter_bits)
    route, payload = split_multicast(words)
    mask = route[0]
    if mask == 0:
        raise ProtocolError("Empty multicast destination mask")
    counts = [int(bool(mask & (8 >> child))) for child in range(4)]
    outputs = {child: [] for child in range(4) if counts[child]}
    pos = 1
    while pos < len(route) and route[pos] != 0:
        if max(counts) > maximum:
            raise HardwareLimitError(
                "QuadRouter needs a count of %d; selected Counter/ChildServer model is %d-bit"
                % (max(counts), counter_bits))
        next_counts = [0]*4
        if not any(counts):
            raise ProtocolError("Routing nibbles remain after all branches ended")
        for child in range(4):
            for _ in range(counts[child]):
                if pos >= len(route) or route[pos] == 0:
                    raise ProtocolError("Zero/EOF inside a QuadRouter level")
                nibble = route[pos]
                outputs[child].append(nibble)
                next_counts[child] += bin(nibble).count("1")
                pos += 1
        counts = next_counts
    if pos == len(route):
        raise ProtocolError("QuadRouter route has no zero flush")
    if any(route[pos:]):
        raise ProtocolError("Nonzero routing data follows the terminal zero")
    return {child: pack_nibbles(nibbles, terminate=terminate_branches and bool(nibbles)) + payload
            for child, nibbles in outputs.items()}

def route_packet(input_port: int, words: Sequence[int], *, counter_bits: int = 8,
                 terminate_branches: bool = False) -> Dict[int, List[int]]:
    """Transform raw hardware words, including legacy PRS fixture patterns.

    The default models the characterized legacy netlist. Corrected branch
    termination and wider counters require explicit overrides here. Semantic
    flag compliance is guaranteed by codec.encode, not
    inferred from arbitrary raw inputs to this function.
    """
    counter_limit(counter_bits)
    if input_port not in range(5):
        raise ProtocolError("Input port must be C0..C3 (0..3) or P (4)")
    validate_packet(words)
    head = words[0]
    # ParentRouter's MltcSel precedes StopcodeSel; child routers omit MltcSel.
    if input_port == 4 and head & MLTC_MASK:
        return multicast_outputs(words, counter_bits=counter_bits,
                                 terminate_branches=terminate_branches)
    if head >> 13 == 1 << 18:
        return multicast_outputs(words[1:], counter_bits=counter_bits,
                                 terminate_branches=terminate_branches)
    if input_port < 4:
        upward = bool(head & (1 << 31))
        head = shift_route(head, 1)
        if upward:
            return {4: [head] + list(words[1:])}
    child = head >> 30
    return {child: [shift_route(head, 2)] + list(words[1:])}


# Topology
from dataclasses import dataclass

from typing import Tuple

Address = Tuple[int, ...]

def common_prefix(addresses) -> Address:
    values = list(addresses)
    if not values:
        raise ValueError("LCA requires at least one destination")
    result = []
    for digits in zip(*values):
        if len(set(digits)) != 1:
            break
        result.append(digits[0])
    return tuple(result)

def node_name(address: Address) -> str:
    return "r" + "".join(map(str, address))

@dataclass(frozen=True)
class Tree:
    depth: int

    def __post_init__(self):
        if type(self.depth) is not int or not 1 <= self.depth <= 6:
            raise ValueError("Router depth must be an integer in 1..6")

    @property
    def leaf_count(self):
        return 4 ** self.depth

    @property
    def router_count(self):
        return (self.leaf_count-1)//3

    def address(self, leaf: int) -> Address:
        if type(leaf) is not int or not 0 <= leaf < self.leaf_count:
            raise ValueError("Leaf is outside this tree")
        return tuple(leaf >> (2*k) & 3 for k in reversed(range(self.depth)))

    def leaf(self, address: Address) -> int:
        if len(address) != self.depth or any(d not in range(4) for d in address):
            raise ValueError("Invalid leaf address")
        value = 0
        for digit in address:
            value = 4*value + digit
        return value

    def routers(self):
        level = [()]
        for _ in range(self.depth):
            yield from level
            level = [parent+(child,) for parent in level for child in range(4)]

    def links(self):
        """Each undirected inter-router link, once, parent then child."""
        for node in self.routers():
            if node:
                yield node[:-1], node

    def destination_lca(self, destinations) -> Address:
        return common_prefix(self.address(d) for d in destinations)

    def multicast_start(self, destinations) -> Address:
        # For one destination the mathematical LCA is the endpoint. The
        # multicast parser physically resides in its parent router.
        return self.destination_lca(destinations)[:self.depth-1]

def path_between(source: Address, destination: Address):
    """Directed edges between any two nodes, endpoints included."""
    ancestor = common_prefix([source, destination])
    current = source
    while len(current) > len(ancestor):
        parent = current[:-1]
        yield current, parent
        current = parent
    for child in destination[len(ancestor):]:
        following = current+(child,)
        yield current, following
        current = following


# Codec
from dataclasses import dataclass

from typing import Tuple

@dataclass(frozen=True)
class Packet:
    packet_id: int
    source_leaf: int
    destinations: Tuple[int, ...]
    payload: Tuple[int, ...]
    kind: str = "multicast"
    release_tick: int = 0
    logical_message_id: int = -1

    def validate(self, tree: Tree):
        tree.address(self.source_leaf)
        if self.packet_id < 0 or self.release_tick < 0:
            raise ValueError("Packet id and abstract release time must be nonnegative")
        if not self.destinations or len(set(self.destinations)) != len(self.destinations):
            raise ValueError("Destinations must be nonempty and unique")
        for dest in self.destinations:
            tree.address(dest)
        if self.kind not in ("unicast", "multicast"):
            raise ValueError("Packet kind must be unicast or multicast")
        if self.kind == "unicast" and len(self.destinations) != 1:
            raise ValueError("Unicast requires exactly one destination")
        validate_payload(self.payload)

def validate_payload(payload):
    if not payload or any(type(w) is not int or not 0 <= w <= PAYLOAD_MASK
                          for w in payload):
        raise ValueError("Payload words carry 28 useful bits; bits 3:0 are reserved for flags")

def payload_words(packet: Packet):
    """Encode data without allowing application bits to assert any flag."""
    validate_payload(packet.payload)
    return [w << FLAG_BITS | (TAIL_MASK if i == len(packet.payload)-1 else 0)
            for i, w in enumerate(packet.payload)]

def unicast_header(tree: Tree, source: int, target: tuple) -> int:
    current = tree.address(source)[:-1]
    ancestor = common_prefix([current, target])
    route = "1"*(len(current)-len(ancestor))
    descent = target[len(ancestor):]
    if descent:
        # Arrival from a child at the turn router consumes UpdownSel's 0;
        # each following parent input goes straight to two-bit ChildSel.
        route += "0" + "".join(format(child, "02b") for child in descent)
    route += "1"  # StopcodeSel sees 100...0 at the selected parser.
    if len(route) > 19:
        raise ProtocolError("Unicast source route exceeds the 19-bit field")
    return int(route.ljust(19, "0"), 2) << 13

def multicast_nibbles(tree: Tree, destinations):
    paths = [tree.address(d) for d in destinations]
    start = tree.multicast_start(destinations)
    frontier = [start]
    nibbles = []
    while frontier:
        following = []
        for node in frontier:
            children = sorted({p[len(node)] for p in paths if p[:len(node)] == node})
            nibbles.append(sum(8 >> child for child in children))
            if len(node)+1 < tree.depth:
                following.extend(node+(child,) for child in children)
        frontier = following
    return nibbles

def encode(tree: Tree, packet: Packet):
    packet.validate(tree)
    if packet.kind == "unicast":
        header = unicast_header(tree, packet.source_leaf,
                                tree.address(packet.destinations[0]))
        return [header] + payload_words(packet)
    header = unicast_header(tree, packet.source_leaf,
                            tree.multicast_start(packet.destinations))
    route = pack_nibbles(multicast_nibbles(tree, packet.destinations), terminate=True)
    return [header] + route + payload_words(packet)

def repeated_unicast(packets):
    result = []
    for packet in packets:
        for destination in packet.destinations:
            result.append(Packet(len(result), packet.source_leaf, (destination,),
                                 packet.payload, "unicast", packet.release_tick,
                                 packet.logical_message_id if packet.logical_message_id >= 0
                                 else packet.packet_id))
    return result


# Network
from collections import deque

from dataclasses import dataclass

@dataclass
class Evaluation:
    packet: Packet
    injected_words: list
    deliveries: dict
    edge_words: list
    routers: list

def evaluate(tree: Tree, packet: Packet, *, counter_bits: int = 8,
             terminate_branches: bool = True) -> Evaluation:
    source = tree.address(packet.source_leaf)
    words = encode(tree, packet)
    todo = deque([(source[:-1], source[-1], words)])
    delivered, edges, visited = {}, [(source, source[:-1], words)], []
    while todo:
        node, port, incoming = todo.popleft()
        if len(visited) > tree.router_count * 2:
            raise ProtocolError("Routing loop or repeated replication")
        visited.append(node)
        for output, outgoing in route_packet(port, incoming, counter_bits=counter_bits,
                                             terminate_branches=terminate_branches).items():
            if output == 4:
                if not node:
                    raise ProtocolError("Packet escaped through the unused root parent port")
                target, target_port = node[:-1], node[-1]
            else:
                target, target_port = node+(output,), 4
            edges.append((node, target, outgoing))
            if len(target) == tree.depth:
                leaf = tree.leaf(target)
                if leaf in delivered:
                    raise ProtocolError("Duplicate destination copy")
                delivered[leaf] = outgoing
            else:
                # A downstream InputRouter needs a zero-terminated route.
                # The legacy Deserializer model drops a flush while empty.
                if (output != 4 and packet.kind == "multicast" and
                        outgoing[0] & MLTC_MASK and len(outgoing) > len(packet.payload) and
                        outgoing[-len(packet.payload)-1] & 0xF0):
                    raise HardwareLimitError(
                        "Deserializer produced a whole number of 7-nibble words at %s -> %s; "
                        "its empty flush emits no terminal word for downstream InputRouter"
                        % (node, target))
                todo.append((target, target_port, outgoing))
    expected_payload = payload_words(packet)
    expected = expected_payload if packet.kind == "multicast" else [0x80000000]+expected_payload
    if set(delivered) != set(packet.destinations):
        raise ProtocolError("Delivered destinations differ from the semantic packet")
    if any(values != expected for values in delivered.values()):
        raise ProtocolError("Delivered words differ from the encoded payload/header")
    return Evaluation(packet, words, delivered, edges, visited)


# Config
from dataclasses import asdict, dataclass

import hashlib

import json

import math

from pathlib import Path

import sys

from typing import Optional

@dataclass(frozen=True)
class Config:
    depth: int = 6
    tile_um: float = 250.
    resistance_ohm_um: float = .20
    capacitance_ff_um: float = .20
    vdd: float = 1.1
    clock_ps: float = 250.
    sync_stages: int = 5
    sync_lanes: int = 2
    sync_queue_per_lane: int = 16
    async_capacity: int = 5
    async_section_limit_ps: float = 2000.
    pcfb_delay_ps: float = 0.
    pcfb_energy_fj: float = 0.
    register_overhead_ps: float = 0.
    register_energy_fj: float = 0.
    async_activity: float = 1.
    sync_link_encoding: str = 'dual_rail_4phase'
    # None selects the encoding's charge events per transported bit and flit.
    sync_activity: Optional[float] = None
    sync_router_fj_bit: float = 20.
    sync_energy_physical: bool = False
    useful_bits_per_flit: int = PAYLOAD_BITS
    multicast_counter_bits: int = 9
    explicit_route_terminator: bool = True
    seed: int = 20260919
    trials: int = 10
    traffic_trials: int = 3
    traffic_workers: int = 8
    traffic_duration_scale: float = 1.
    traffic_python: str = ''
    traffic_backend: str = 'python'

    def __post_init__(self):
        if self.sync_link_encoding not in ('dual_rail_4phase', 'single_ended'):
            raise ValueError('Unknown synchronous link encoding')
        if self.sync_activity is None:
            object.__setattr__(self, 'sync_activity',
                               1. if self.sync_link_encoding == 'dual_rail_4phase' else .25)
        if any(not math.isfinite(value) or value < 0
               for value in (self.async_activity, self.sync_activity)):
            raise ValueError('Wire activity factors must be finite and nonnegative')
        if not 1 <= self.depth <= 6:
            raise ValueError('Hardware addresses support depths 1..6')
        if min(self.tile_um, self.clock_ps, self.async_capacity, self.trials) <= 0:
            raise ValueError('Lengths, clock, capacity and trials must be positive')
        if type(self.sync_stages) is not int or self.sync_stages<1:
            raise ValueError('Synchronous router requires at least its input capture stage')
        if min(self.traffic_trials,self.traffic_workers,self.traffic_duration_scale)<=0:
            raise ValueError('Traffic trials, workers and duration must be positive')
        if self.traffic_backend not in ('python','native_mesh'):
            raise ValueError('Unknown continuous-traffic backend')
        if min(self.resistance_ohm_um, self.capacitance_ff_um) < 0:
            raise ValueError('RC must be nonnegative')
        if self.register_overhead_ps >= self.clock_ps:
            raise ValueError('Register overhead leaves no wire timing budget')
        if self.useful_bits_per_flit != PAYLOAD_BITS:
            raise ValueError('A 32-bit flit carries 28 useful bits; bits 3:0 are reserved flags')
        if (type(self.multicast_counter_bits) is not int or
                not 1 <= self.multicast_counter_bits <= 32):
            raise ValueError('Multicast counter width must be an integer in 1..32 bits')
        if type(self.explicit_route_terminator) is not bool:
            raise ValueError('Explicit route terminator must be a boolean')

    @property
    def side(self):
        return 2**self.depth

    def metadata(self):
        return dict(asdict(self), mesh_supports_multicast=False, transport_flit_bits=FLIT_BITS,
                    sync_link_timing='Physical RC; intermediate registers only when section timing exceeds clock budget',
                    sync_router_capture='Input capture is stage 1 of sync_stages, not an extra link register; common clock, no mesochronous resynchronization penalty',
                    reserved_flag_bits=FLAG_BITS, payload_bits=PAYLOAD_BITS,
                    async_link_encoding='dual_rail_4phase',
                    async_signal_wires_per_direction=2*FLIT_BITS,
                    sync_signal_wires_per_direction=FLIT_BITS*(
                        2 if self.sync_link_encoding == 'dual_rail_4phase' else 1))

def dummy_luts():
    data = dict(metadata=dict(physical=False, label='DUMMY / SOFTWARE VALIDATION',
        technology='SYNTHETIC; intended PTM65 TT interface', VDD=1.1, temperature_C=27,
        netlist_sha256=None, campaign=None, timestamp='2026-09-19',
        units=dict(latency='ps', ii='ps', energy='fJ / input transport bit (32 transport bits per flit; 28 payload bits)'),
        definitions=dict(no_load='output valid minus input valid on an available path',
                         ii='consecutive acceptance interval under continuous ready traffic',
                         handshake='input ack low minus input valid',
                         loaded='delivery minus injection request; never a LUT parameter')),
        ports=dict(inputs=['C0i','C1i','C2i','C3i','Pi'],outputs=['C0o','C1o','C2o','C3o','Po']),
        unicast={}, multicast={}, parser={})
    for cls, offset in [('header',100),('middle',0),('tail',80)]:
        data['unicast'][cls] = {key:[[None if i==j==4 else value+offset*scale+15*i+5*j
            for j in range(5)] for i in range(5)] for key,value,scale in
            [('latency_ps',850.,1),('ii_ps',220.,.2),('handshake_ps',190.,.2),
             ('dynamic_fj_bit',12.,.01),('gross_fj_bit',13.,.01)]}
    for cls,offset in [('first',100),('middle',0),('tail',80)]:
        data['multicast'][cls] = {key:[value+offset*scale+3*i for i in range(5)]
            for key,value,scale in [('latency_ps',1400.,1),('ii_ps',300.,.2),
                ('handshake_ps',250.,.2),('dynamic_fj_bit',24.,.01),('gross_fj_bit',25.,.01)]}
    data['parser'] = dict(model='base(z) + switch_correction(s); baseline counted once',
        base_ps_by_z=[1100.-100*z for z in range(7)],
        switch_ps=[55.*s for s in range(8)],
        base_energy_fj_by_z=[850.-70*z for z in range(7)],
        switch_energy_fj=[35.*s for s in range(8)],
        validated=False, notes='Synthetic timing and energy, no physical fit.')
    return data

def validate_calibrated_luts(data):
    """Validate the calibrated policy without claiming a successful SPICE fit."""
    meta=data['metadata']
    if (meta.get('physical') or not meta.get('measurement_derived') or not meta.get('usable')
            or meta.get('calibration_policy')!='optimistic_spice_20260926'
            or meta.get('energy_includes_leakage') is not False):
        raise ValueError('Invalid optimistic LUT policy/energy metadata')
    source=meta.get('source_measurements',{})
    if not source.get('sha256') or not meta.get('netlist_sha256') or not meta.get('campaign'):
        raise ValueError('Calibrated LUT missing physical provenance')
    checks=data.get('validation',{})
    for key in ('source_functional_pass','source_hashes_verified','steady_ii_validated',
                'energy_rejections_excluded','optimistic_policy_authorized'):
        if checks.get(key) is not True:raise ValueError('Calibrated LUT check failed: '+key)
    def numbers(values, size):
        if len(values)!=size or any(type(v) not in (int,float) or not math.isfinite(v) or v<=0 for v in values):
            raise ValueError('Incomplete/nonpositive calibrated LUT table')
    for key in ('processing_ps','ii_ps','dynamic_fj_bit'):
        numbers(data.get('setup',{}).get(key,[]),5)
    for cls in ('first','middle','tail'):
        for metric in ('latency_ps','ii_ps','dynamic_fj_bit','handshake_ps'):
            matrix=data['multicast'][cls].get(metric+'_by_fanout',[])
            if len(matrix)!=5:raise ValueError('Multicast LUT requires five input ports')
            for row in matrix:
                if len(row)!=5 or row[0] is not None:raise ValueError('Fanout zero must be null')
                numbers(row[1:],4)
    parser=data['parser']
    if parser.get('model')!='optimistic_phase_z_s_tables' or parser.get('physical_fit_validated') is not False:
        raise ValueError('Invalid parser calibration model')
    for phase in ('initial','continuation','terminator'):
        for metric in ('processing_ps','dynamic_energy_fj'):
            table=parser['phases'][phase].get(metric+'_by_z_s',[])
            if len(table)!=7:raise ValueError('Parser LUT requires seven z values')
            for row in table:numbers(row,8)
    if parser['phases']['continuation']['processing_ps_by_z_s'][0][0]!=31000.:
        raise ValueError('User-authorized same-child processing time must be 31 ns')
    rejected={r['id'] for r in data['transactions'] if r.get('isolation_rejection')}
    for phase in parser['phases'].values():
        for anchor in phase['dynamic_energy_fj_anchors']:
            if rejected.intersection(anchor['candidate_ids']):raise ValueError('Rejected parser energy used')

def load_luts(path):
    path = Path(path)
    data = json.loads(path.read_text())
    metadata=data['metadata']
    calibrated=data.get('schema_version')==2
    if data.get('schema_version',1) not in (1,2):raise ValueError('Unknown LUT schema')
    if calibrated:validate_calibrated_luts(data)
    if metadata.get('physical'):
        if not metadata.get('usable') or not metadata.get('netlist_sha256') or not metadata.get('campaign'):
            raise ValueError('Physical LUT is incomplete, unvalidated, or missing campaign provenance')
        if not data['parser'].get('validated'):
            raise ValueError('Physical route-parser model has not passed held-out validation')
        for key in ('processing_ps','ii_ps','dynamic_fj_bit'):
            values=data.get('setup',{}).get(key,[])
            if len(values)!=5 or any(v is None or not math.isfinite(v) or v<0 for v in values):
                raise ValueError('Physical LUT missing consumed setup-header coverage for all five inputs')
    for cls in ('header','middle','tail'):
        for key in ('latency_ps','ii_ps','dynamic_fj_bit'):
            matrix = data['unicast'][cls][key]
            if len(matrix)!=5 or any(len(row)!=5 for row in matrix):
                raise ValueError('Unicast LUT must be 5 by 5')
            for i,row in enumerate(matrix):
                for j,v in enumerate(row):
                    if i==j==4:
                        if v is not None: raise ValueError('Pi -> Po must be null')
                    elif v is None or not math.isfinite(v) or v<0 or (key=='ii_ps' and v==0):
                        raise ValueError('Missing/negative legal LUT entry')
    for cls in (() if calibrated else ('first','middle','tail')):
        for key in ('latency_ps','ii_ps','dynamic_fj_bit'):
            values=data['multicast'][cls][key]
            if len(values)!=5 or any(v is None or not math.isfinite(v) or v<0 or (key=='ii_ps' and v==0) for v in values):
                raise ValueError('Incomplete multicast LUT')
    for key in (() if calibrated else ('base_ps_by_z','switch_ps','base_energy_fj_by_z','switch_energy_fj')):
        if len(data['parser'].get(key,[])) != (7 if 'by_z' in key else 8) or any(v is None or not math.isfinite(v) or v<0 for v in data['parser'][key]):
            raise ValueError('Incomplete parser LUT')
    data['metadata']['file_sha256']=hashlib.sha256(path.read_bytes()).hexdigest()
    data['metadata']['source']=str(path.resolve())
    return data


# Models
from dataclasses import dataclass, field

import math

from pathlib import Path

import sys

def rc_delay_ps(length_um, config):
    # Convert all operands to SI before calculating Elmore delay.
    length_m=length_um*1e-6
    resistance_m=config.resistance_ohm_um*1e6
    capacitance_m=config.capacitance_ff_um*1e-9
    return .5*resistance_m*capacitance_m*length_m**2*1e12

def link(length_um, asynchronous, config):
    budget = config.async_section_limit_ps if asynchronous else config.clock_ps-config.register_overhead_ps
    sections=max(1, math.ceil(math.sqrt(rc_delay_ps(length_um,config)/budget)-1e-12))
    section_rc=rc_delay_ps(length_um/sections,config)
    rc=sections*section_rc
    # Only internal section boundaries add storage. A short wire has no link
    # register and reaches the receiving router after its physical RC delay.
    # For a segmented synchronous wire, internal captures occur on clock edges;
    # after the last intermediate register, only the final section RC remains.
    delay=(rc+(sections-1)*config.pcfb_delay_ps if asynchronous else
           (sections-1)*config.clock_ps+section_rc)
    factor=config.async_activity if asynchronous else config.sync_activity
    encoding='dual_rail_4phase' if asynchronous else config.sync_link_encoding
    signal_wires=FLIT_BITS*(2 if encoding=='dual_rail_4phase' else 1)
    # C' is per physical rail. Dual-rail RTZ charges exactly one of the two
    # rails per logical bit per flit, including flags: alpha=1, no extra x2.
    # Single-ended random traffic instead defaults to P(0 -> 1)=0.25.
    energy=FLIT_BITS*factor*config.capacitance_ff_um*length_um*config.vdd**2
    energy+=(sections-1)*(config.pcfb_energy_fj if asynchronous else config.register_energy_fj)
    return dict(length_um=length_um, sections=sections, delay_ps=delay,
                energy_fj=energy, elmore_ps=rc, section_rc_ps=section_rc,
                intermediate_registers=0 if asynchronous else sections-1, encoding=encoding,
                signal_wires_per_direction=signal_wires)

def coordinates(address, config):
    x=y=0.
    size=config.side*config.tile_um
    for digit in address:
        size/=2
        x+=(digit & 1)*size
        y+=(digit >> 1)*size
    return x+size/2,y+size/2

def leaf_xy(leaf, depth):
    x=y=0
    for digit in Tree(depth).address(leaf):
        x=2*x+(digit & 1); y=2*y+(digit >> 1)
    return x,y

def xy_leaf(x,y,depth):
    return Tree(depth).leaf(tuple(((y>>k & 1)<<1)|(x>>k & 1) for k in reversed(range(depth))))

def mesh_path(source,destination):
    x,y=source; dx,dy=destination
    path=[source]
    while (x,y)!=(dx,dy):
        sx=(dx>x)-(dx<x); sy=(dy>y)-(dy<y)
        if sx: x+=sx
        else: y+=sy
        path.append((x,y))
    return path

def parse_route(words, *, counter_bits=9, terminate_branches=True):
    """Stateful breadth-first ownership plus exact packed-output dependencies.

    The first zero is an active flush; z counts only subsequent skipped nibbles.
    s includes a child change crossing the previous word boundary.
    """
    maximum=counter_limit(counter_bits)
    nibs=[word>>shift & 15 for word in words for shift in range(28,3,-4)]
    counts=[int(bool(nibs[0] & (8>>c))) for c in range(4)]
    ownership=[None]*len(nibs); pos=1
    while pos<len(nibs) and nibs[pos]:
        if max(counts)>maximum:
            raise HardwareLimitError('QuadRouter needs a count of %d; selected counter is %d-bit'
                                     % (max(counts),counter_bits))
        following=[0]*4
        for child in range(4):
            for _ in range(counts[child]):
                if pos>=len(nibs) or not nibs[pos]: raise ValueError('Invalid route level')
                ownership[pos]=child
                following[child]+=bin(nibs[pos]).count('1'); pos+=1
        counts=following
    if pos==len(nibs): raise ValueError('No route flush')
    features=[]; previous=None
    for start in range(0,len(nibs),7):
        selected=[v for v in ownership[start:start+7] if v is not None]
        switches=0
        for child in selected:
            switches+=previous is not None and previous!=child; previous=child
        phase=('initial' if start==0 else 'terminator' if not any(nibs[start:start+7]) else 'continuation')
        features.append(dict(z=max(0,min(6,start+7-pos-1)),s=switches,children=selected,phase=phase))
    dependencies={}
    for child in range(4):
        indices=[i for i,c in enumerate(ownership) if c==child]
        dependencies[child]=[indices[j+6]//7 for j in range(0,len(indices)-6,7)]
        # A nonempty exact seven-nibble multiple requires an additional zero
        # route word. It depends on the incoming flush, just like partial-word
        # padding. Empty branches terminate at leaves and carry payload only.
        if len(indices)%7 or (terminate_branches and indices):
            dependencies[child].append(pos//7)
    return features, dependencies

@dataclass(eq=False)
class Operation:
    message: int
    node: tuple
    port: object
    index: int
    word: int
    cls: str
    multicast: bool = False
    feature: dict = field(default_factory=dict)
    outputs: list = field(default_factory=list)
    previous: object = None
    requested: float = 0.
    arrived: float = None
    accepted: float = None
    ready: float = None
    retired: float = None
    intrinsic: float = 0.
    ii: float = 0.
    cumulative_router: float = 0.
    cumulative_wire: float = 0.
    cumulative_distance: float = 0.
    pending: int = 0
    router_energy_fj: float = 0.

@dataclass
class Transmission:
    output: object
    child: object
    word: int
    physical: dict
    destination: int = None
    payload_index: int = None
    launched: bool = False

@dataclass
class Program:
    packet: Packet
    topology: str
    operations: list
    injected: list
    injection_link: dict
    route_bits: int

def compile_tree(packet,config):
    tree=Tree(config.depth)
    checked=evaluate(tree,packet,counter_bits=config.multicast_counter_bits,
                     terminate_branches=config.explicit_route_terminator)
    operations=[]
    payload_n=len(packet.payload)
    def visit(node,port,words):
        parsed=(port==4 and words[0]&MLTC_MASK) or (words[0]>>13==1<<18)
        prefix=int(parsed and not (port==4 and words[0]&MLTC_MASK))
        route_n=len(words)-payload_n-prefix if parsed else 0
        features,deps=(parse_route(words[prefix:prefix+route_n],
                                  counter_bits=config.multicast_counter_bits,
                                  terminate_branches=config.explicit_route_terminator)
                       if parsed else ([],{}))
        local=[]
        for idx,word in enumerate(words):
            if idx<len(words)-payload_n:
                cls='setup' if parsed and idx<prefix else ('route' if parsed else 'header' if idx==0 else 'middle')
            else:
                pay=idx-(len(words)-payload_n)
                cls='tail' if pay==payload_n-1 else ('first' if parsed and pay==0 else 'middle')
            op=Operation(packet.packet_id,node,port,idx,word,cls,parsed,
                         features[idx-prefix] if cls=='route' else {},requested=packet.release_tick)
            op.feature['control']=idx<len(words)-payload_n
            op.previous=local[-1] if local else None
            local.append(op);operations.append(op)
        for output,outgoing in route_packet(port,words,
                                           counter_bits=config.multicast_counter_bits,
                                           terminate_branches=config.explicit_route_terminator).items():
            target=node[:-1] if output==4 else node+(output,)
            inp=node[-1] if output==4 else 4
            a,b=coordinates(node,config),coordinates(target,config)
            physical=link(abs(a[0]-b[0])+abs(a[1]-b[1]),True,config)
            dest=tree.leaf(target) if len(target)==config.depth else None
            children=[None]*len(outgoing) if dest is not None else visit(target,inp,outgoing)
            for idx,(word,child) in enumerate(zip(outgoing,children)):
                pay=idx-(len(outgoing)-payload_n)
                if parsed:
                    parent_idx=(len(words)-payload_n+pay if pay>=0 else prefix+deps[output][idx])
                else:
                    parent_idx=idx
                local[parent_idx].outputs.append(Transmission(output,child,word,physical,dest,pay if pay>=0 else None))
        return local
    address=tree.address(packet.source_leaf)
    first=visit(address[:-1],address[-1],checked.injected_words)
    a,b=coordinates(address,config),coordinates(address[:-1],config)
    injection=link(abs(a[0]-b[0])+abs(a[1]-b[1]),True,config)
    return Program(packet,'Tree',operations,first,injection,
                   (len(checked.injected_words)-payload_n)*FLIT_BITS)

def mesh_route_words(packet, config):
    """One destination header above the four reserved flags; unicast only."""
    packet.validate(Tree(config.depth))
    if packet.kind != 'unicast':
        raise ValueError('Mesh routers do not support multicast; use unicast packets')
    return [packet.destinations[0] << FLAG_BITS], FLIT_BITS

def compile_mesh(packet,config):
    route_words,route_bits=mesh_route_words(packet,config)
    source=leaf_xy(packet.source_leaf,config.depth)
    paths={d:mesh_path(source,leaf_xy(d,config.depth)) for d in packet.destinations}
    edges={}; nodes={source}
    for dest,path in paths.items():
        for a,b in zip(path,path[1:]):
            edges.setdefault(a,set()).add(b);nodes.add(b)
    # Each unicast path has exactly one incoming parent per router.
    parents={b:a for a,bs in edges.items() for b in bs}
    dest_nodes={leaf_xy(d,config.depth):d for d in packet.destinations}
    headers=len(route_words)
    words=route_words+payload_words(packet)
    local={};operations=[]
    for node in sorted(nodes):
        incoming='local' if node==source else (parents[node][0]-node[0],parents[node][1]-node[1])
        local[node]=[]
        for idx,word in enumerate(words):
            cls='header' if idx<headers else ('tail' if idx==len(words)-1 else 'middle')
            op=Operation(packet.packet_id,node,incoming,idx,word,cls,False,requested=packet.release_tick)
            op.previous=local[node][-1] if local[node] else None
            local[node].append(op);operations.append(op)
    for node,ops in local.items():
        for target in sorted(edges.get(node,())):
            dx,dy=target[0]-node[0],target[1]-node[1]
            physical=link(math.hypot(dx,dy)*config.tile_um,False,config)
            for idx,op in enumerate(ops):
                op.outputs.append(Transmission((dx,dy),local[target][idx],words[idx],physical))
        if node in dest_nodes:
            for idx,op in enumerate(ops):
                op.outputs.append(Transmission('local',None,words[idx],dict(delay_ps=0.,energy_fj=0.,length_um=0.,sections=0),dest_nodes[node],idx-headers if idx>=headers else None))
    return Program(packet,'Mesh',operations,
                   local[source],dict(delay_ps=0.,energy_fj=0.,length_um=0.,sections=0),route_bits)

def compile_packet(packet,topology,config):
    if topology not in ('Tree', 'Mesh'):
        raise ValueError('Unknown topology: '+str(topology))
    return compile_tree(packet,config) if topology=='Tree' else compile_mesh(packet,config)


# Sim
from collections import defaultdict, deque

import heapq

import itertools

import json

import math

from pathlib import Path

def latency_phases(release_ps, setup_complete_ps, first_payload_ps, completion_ps):
    """Disjoint elapsed intervals; delivery can overlap setup on other branches.

    The delivery boundary is the first useful payload arrival, not the start
    of every internal data operation. These are observable timeline intervals,
    not a causal allocation of total latency to individual circuits.
    """
    if not (release_ps <= setup_complete_ps <= completion_ps and
            release_ps <= first_payload_ps <= completion_ps):
        raise ValueError('Invalid setup/payload timeline')
    return dict(setup_ps=setup_complete_ps-release_ps,
                payload_transfer_ps=completion_ps-setup_complete_ps,
                route_setup_only_ps=min(setup_complete_ps,first_payload_ps)-release_ps,
                common_payload_ps=completion_ps-min(setup_complete_ps,first_payload_ps),
                route_payload_overlap_ps=max(0.,setup_complete_ps-first_payload_ps),
                payload_after_setup_ps=completion_ps-setup_complete_ps)

class Simulator:
    def __init__(self, topology, config=None, luts=None, trace=False):
        self.topology=topology; self.config=config or Config()
        self.luts=luts or load_luts(DEFAULT_LUT)
        self.async_=topology=='Tree'
        self.incoming_ii=self.async_ and self.luts['metadata'].get('ii_convention')=='incoming_ack_high'
        self.now=0.; self.events=[]; self.sequence=itertools.count()
        self.inputs=defaultdict(deque); self.occupancy=defaultdict(int)
        self.high_water=defaultdict(int); self.port_next=defaultdict(float)
        self.input_forward_next=defaultdict(float)
        self.port_last_accept={};self.output_last_departure={}
        self.input_scheduled={}; self.output_scheduled={}
        self.outputs=defaultdict(lambda:defaultdict(deque))
        self.output_reserved={}
        self.output_next=defaultdict(float); self.last_grant={}; self.owner={}
        self.parser_owner={};self.parser_next=defaultdict(float)
        self.parser_waiters=defaultdict(set)
        self.input_ranks={}
        self.programs={}; self.deliveries=defaultdict(dict)
        self.energy=defaultdict(lambda:dict(router_fj=0.,wire_fj=0.,route_fj=0.,payload_fj=0.))
        self.trace=[] if trace else None
        self.total_events=0

    def at(self, time, callback, *args):
        if time < self.now-1e-7: raise AssertionError('Event travelled backwards')
        heapq.heappush(self.events,(max(time,self.now),next(self.sequence),callback,args))

    def aligned(self,t):
        return t if self.async_ else math.ceil(t/self.config.clock_ps-1e-10)*self.config.clock_ps

    def input_key(self,op):
        cached=getattr(op,'_input_key',None)
        if cached is not None:return cached
        lane=0 if self.async_ else op.message % self.config.sync_lanes
        key=(op.node,op.port,lane)
        op._input_key=key
        if key not in self.input_ranks:self.input_ranks[key]=repr(key)
        return key

    def capacity(self):
        return self.config.async_capacity if self.async_ else self.config.sync_queue_per_lane+self.config.sync_stages

    def add(self,packet,payload_only=False):
        if packet.packet_id in self.programs: raise ValueError('Duplicate message id')
        program=compile_packet(packet,self.topology,self.config)
        if payload_only:
            if packet.kind!='unicast' or len(packet.payload)!=1:
                raise ValueError('Preconfigured no-load probe needs one unicast payload')
            program.operations=[op for op in program.operations if op.cls=='tail']
            for op in program.operations:
                op.previous=None;op.cls='middle';op.index=0
            program.injected=[program.injected[-1]]
        return self.add_program(program)

    def add_program(self,program):
        """Schedule a fresh compiled packet (also used by continuous traffic)."""
        packet=program.packet
        if packet.packet_id in self.programs:raise ValueError('Duplicate message id')
        self.programs[packet.packet_id]=program
        # The endpoint transmitter is itself an elastic, one-slot source.
        source=('endpoint',packet.source_leaf)
        self.at(packet.release_tick,self.inject,program,0,source)
        return program

    def inject(self,program,index,source):
        op=program.injected[index]
        key=(source,'source',0)
        # Serialize complete packets at a shared physical source port.
        if key in self.owner and self.owner[key]!=op.message:
            self.inputs[key].append((program,index,source));return
        self.owner[key]=op.message
        physical=program.injection_link
        op.cumulative_wire=physical['delay_ps'];op.cumulative_distance=physical['length_um']
        self.add_energy(op,'wire_fj',physical['energy_fj'])
        def accepted():
            if index+1<len(program.injected):
                delay=(max(1.,physical['delay_ps']/max(1,physical['sections'])) if self.async_ else self.config.clock_ps)
                self.at(self.now+delay,self.inject,program,index+1,source)
            else:
                self.owner.pop(key,None)
                if self.inputs[key]:
                    p,i,s=self.inputs[key].popleft();self.at(self.now,self.inject,p,i,s)
                self.source_released(program)
        self.at(self.now+physical['delay_ps'],self.arrive,op,accepted)

    def source_released(self,program):
        """Continuous-traffic hook: the source accepted the last input flit."""

    def advance(self,until):
        """Execute events strictly before a time boundary, without draining."""
        if until<self.now:raise ValueError('Cannot move backwards')
        while self.events and self.events[0][0]<until:
            self.now,_,callback,args=heapq.heappop(self.events)
            callback(*args);self.total_events+=1
        self.now=until

    def arrive(self,op,accepted_callback):
        if op.arrived is not None: raise AssertionError('Duplicate operation delivery')
        op.arrived=self.now
        key=self.input_key(op)
        self.inputs[key].append((op,accepted_callback))
        self.wake_input(key)

    def wake_input(self,key):
        if not self.inputs[key] or key[0][0:1]==('endpoint',):return
        op=self.inputs[key][0][0]
        at=self.admission_time(op)
        if self.input_scheduled.get(key,float('inf'))<=at:return
        self.input_scheduled[key]=at;self.at(at,self.admit,key,at)

    def admission_time(self,op):
        port=(op.node,op.port)
        available=self.port_next[port]
        if self.async_ and op.cls=='route':
            # A route's LUT time is INTERNAL serial processing, not a measured
            # frontend acceptance interval. Admission reserves a finite input
            # slot; admit() schedules the parser after preceding operations.
            # Charging processing here as well duplicates its startup cost.
            available=self.now
        elif self.incoming_ii:
            available=self.port_last_accept.get(port,-float('inf'))+self.parameters(op)[1]
        # The receiving register is the first of the configured router stages,
        # not an additional link stage. Even a zero-RC wire needs this capture.
        capture=getattr(op,'capture_not_before',0.) if not self.async_ else 0.
        return self.aligned(max(self.now,available,capture))

    def parameters(self,op):
        if not self.async_:
            # Network admission has already performed stage 1 (input capture).
            # Local injection starts the full router pipeline instead.
            remaining=self.config.sync_stages-int(op.port!='local')
            return remaining*self.config.clock_ps,self.config.clock_ps,FLIT_BITS*self.config.sync_router_fj_bit
        if op.cls=='route':
            p=self.luts['parser'];z=op.feature['z'];s=op.feature['s']
            if self.luts.get('schema_version')==2:
                phase=p['phases'][op.feature['phase']]
                t=phase['processing_ps_by_z_s'][z][s]
                return t,t,phase['dynamic_energy_fj_by_z_s'][z][s]
            t=p['base_ps_by_z'][z]+p['switch_ps'][s]
            return t,t,p['base_energy_fj_by_z'][z]+p['switch_energy_fj'][s]
        if op.cls=='setup':
            # Consumed stop header traverses the input selector to the parser.
            p=self.luts.get('setup',{})
            if p:return p['processing_ps'][op.port],p['ii_ps'][op.port],FLIT_BITS*p['dynamic_fj_bit'][op.port]
            # Explicit dummy-only fallback. Measured sets must provide setup.
            if self.luts['metadata'].get('physical'): raise ValueError('Measured LUT missing consumed setup header')
            return 600.,220.,320.
        if op.multicast:
            lut=self.luts['multicast'][op.cls]
            if self.luts.get('schema_version')==2:
                fanout=len({tr.output for tr in op.outputs})
                if not 1<=fanout<=4:raise ValueError('Multicast payload requires 1..4 output ports')
                return (lut['latency_ps_by_fanout'][op.port][fanout],
                        lut['ii_ps_by_fanout'][op.port][fanout],
                        FLIT_BITS*lut['dynamic_fj_bit_by_fanout'][op.port][fanout])
            return lut['latency_ps'][op.port],lut['ii_ps'][op.port],FLIT_BITS*lut['dynamic_fj_bit'][op.port]
        out=op.outputs[0].output
        lut=self.luts['unicast'][op.cls]
        return lut['latency_ps'][op.port][out],lut['ii_ps'][op.port][out],FLIT_BITS*lut['dynamic_fj_bit'][op.port][out]

    def admit(self,key,scheduled):
        if self.input_scheduled.get(key)!=scheduled:return
        self.input_scheduled.pop(key,None)
        if not self.inputs[key] or self.occupancy[key]>=self.capacity():return
        op,callback=self.inputs[key][0]
        port=(op.node,op.port)
        if self.admission_time(op)>self.now+1e-8:
            self.wake_input(key);return
        if op.previous is not None and op.previous.accepted is None:
            raise AssertionError('Input stream arrived out of order')
        if self.async_ and op.multicast:
            owner=self.parser_owner.get(op.node)
            if owner is not None and owner!=op.message:
                self.parser_waiters[op.node].add(key);return
            self.parser_owner[op.node]=op.message
        self.inputs[key].popleft()
        latency,ii,energy=self.parameters(op)
        if ii<=0:raise ValueError('II must be positive')
        op.accepted=self.now;op.intrinsic=latency;op.ii=ii
        op.router_energy_fj=energy
        op.ready=self.now+latency
        # Elastic channels preserve order across packet boundaries as well as
        # within a packet. Otherwise a fast new header can overtake an older
        # multicast tail and wait in front of the tail that owns the output.
        if key in self.input_forward_next:
            op.ready=max(op.ready,self.input_forward_next[key]+(ii if self.incoming_ii else 0.))
        if op.previous is not None:
            op.ready=max(op.ready,op.previous.ready+ii)
        if self.async_ and op.cls=='route':
            op.ready=max(op.ready,self.parser_next[op.node]+latency)
            self.parser_next[op.node]=op.ready
        self.input_forward_next[key]=op.ready if self.incoming_ii else op.ready+ii
        op.cumulative_router+=latency
        self.port_next[port]=self.now+ii
        self.port_last_accept[port]=self.now
        self.occupancy[key]+=1;self.high_water[key]=max(self.high_water[key],self.occupancy[key])
        self.add_energy(op,'router_fj',energy)
        self.at(op.ready,self.forward,op)
        callback()
        # Both logical lanes share the input port's one-flit-per-cycle issue.
        for lane in range(1 if self.async_ else self.config.sync_lanes):
            self.wake_input((op.node,op.port,lane))

    def add_energy(self,op,component,value):
        e=self.energy[op.message];e[component]+=value
        e['route_fj' if op.cls in ('header','route','setup') or op.feature.get('control') else 'payload_fj']+=value

    def forward(self,op):
        op.pending=len(op.outputs)
        if not op.outputs:
            self.retire(op);return
        for transmission in op.outputs:
            key=(op.node,transmission.output)
            inp=self.input_key(op)
            self.outputs[key][inp].append((op,transmission))
            self.wake_output(key)

    def wake_output(self,key):
        at=self.aligned(max(self.now,self.output_next[key]))
        if self.incoming_ii:
            candidates=[inp for inp,q in self.outputs[key].items() if q and
                        (key not in self.owner or self.owner[key]==q[0][0].message)]
            if not candidates:return
            # Choose fairly before waiting for this contender's service gap.
            # Choosing only already-eligible short-II flits can starve a long-II
            # contender forever by continually resetting the departure clock.
            candidates.sort(key=self.input_ranks.__getitem__)
            if self.output_reserved.get(key) not in candidates:
                last_grant=self.last_grant.get(key)
                last_rank=self.input_ranks.get(last_grant,'')
                self.output_reserved[key]=next((x for x in candidates if self.input_ranks[x]>last_rank),candidates[0])
            op=self.outputs[key][self.output_reserved[key]][0][0]
            last,section=self.output_last_departure.get(key,(-float('inf'),0.))
            at=max(self.now,last+max(op.ii,section))
        if self.output_scheduled.get(key,float('inf'))<=at:return
        self.output_scheduled[key]=at;self.at(at,self.grant,key,at)

    def grant(self,key,scheduled):
        if self.output_scheduled.get(key)!=scheduled:return
        self.output_scheduled.pop(key,None)
        queues=self.outputs[key]
        possible=[inp for inp,q in queues.items() if q and (key not in self.owner or self.owner[key]==q[0][0].message)]
        if self.incoming_ii:
            possible=[inp for inp in possible if inp==self.output_reserved.get(key)]
        if not possible:return
        possible.sort(key=self.input_ranks.__getitem__)
        last=self.last_grant.get(key)
        last_rank=self.input_ranks.get(last,'')
        selected=next((x for x in possible if self.input_ranks[x]>last_rank),possible[0])
        op,tr=queues[selected].popleft()
        self.output_reserved.pop(key,None)
        self.owner[key]=op.message;self.last_grant[key]=selected
        tr.launched=True
        physical=tr.physical
        section_delay=physical['delay_ps']/max(1,physical['sections'])
        self.output_next[key]=self.now+max(op.ii,section_delay if self.async_ else self.config.clock_ps)
        self.output_last_departure[key]=(self.now,section_delay)
        self.add_energy(op,'wire_fj',physical['energy_fj'])
        if self.trace is not None:
            self.trace.append(dict(kind='link',message_id=op.message,source=self.programs[op.message].packet.source_leaf,
                destinations=self.programs[op.message].packet.destinations,node=op.node,input_port=op.port,
                output_port=tr.output,flit_class=op.cls,payload_index=tr.payload_index,
                injection_request_ps=op.requested,arrived_ps=op.arrived,accept_ps=op.accepted,
                departure_ps=self.now,link_arrival_ps=self.now+physical['delay_ps'],
                word=tr.word,link=physical))
        def accepted():
            op.pending-=1
            if op.word & TAIL_MASK:
                self.owner.pop(key,None)
            if not op.pending:self.retire(op)
            self.wake_output(key)
        if tr.child is None:
            self.at(self.now+physical['delay_ps'],self.deliver,op,tr,accepted)
        else:
            child=tr.child
            if not self.async_:
                child.capture_not_before=self.now+physical['sections']*self.config.clock_ps
            child.cumulative_router=op.cumulative_router
            child.cumulative_wire=op.cumulative_wire+physical['delay_ps']
            child.cumulative_distance=op.cumulative_distance+physical['length_um']
            self.at(self.now+physical['delay_ps'],self.arrive,child,accepted)
        self.wake_output(key)

    def deliver(self,op,tr,callback):
        if tr.payload_index is not None:
            key=(tr.destination,tr.payload_index)
            if key in self.deliveries[op.message]:raise AssertionError('Duplicate payload delivery')
            self.deliveries[op.message][key]=dict(time_ps=self.now,
                router_ps=op.cumulative_router,
                wire_ps=op.cumulative_wire+tr.physical['delay_ps'],
                distance_um=op.cumulative_distance+tr.physical['length_um'])
        callback()

    def retire(self,op):
        op.retired=self.now;key=self.input_key(op);self.occupancy[key]-=1
        if self.trace is not None:
            self.trace.append(dict(kind='router',message_id=op.message,node=op.node,input_port=op.port,
                input_index=op.index,word=op.word,flit_class=op.cls,multicast=op.multicast,
                parser_features=op.feature,injection_request_ps=op.requested,arrived_ps=op.arrived,
                accepted_ps=op.accepted,ready_ps=op.ready,retired_ps=op.retired,
                latency_lut_ps=op.intrinsic,ii_lut_ps=op.ii,router_energy_fj=op.router_energy_fj))
        if self.async_ and op.multicast and op.word & TAIL_MASK:
            self.parser_owner.pop(op.node,None)
            for waiting in self.parser_waiters.pop(op.node,set()):self.wake_input(waiting)
        self.wake_input(key)

    def run(self):
        while self.events:
            self.now,_,callback,args=heapq.heappop(self.events)
            callback(*args);self.total_events+=1
        results=[]
        for mid,program in self.programs.items():
            packet=program.packet
            expected={(d,k) for d in packet.destinations for k in range(len(packet.payload))}
            if set(self.deliveries[mid])!=expected:
                remaining=[(op.node,op.index,op.cls,op.arrived,op.accepted) for op in program.operations if op.retired is None]
                # Exhausting this model's event queue is diagnostic evidence of
                # a stall, not a proof of deadlock in the hardware routing.
                raise RuntimeError('Simulation stalled/missing payload for message %d; remaining=%s'%(mid,remaining[:12]))
            last=max(self.deliveries[mid].values(),key=lambda x:x['time_ps'])
            latency=last['time_ps']-packet.release_tick
            useful=len(expected)*self.config.useful_bits_per_flit
            received=[tr for op in program.operations for tr in op.outputs
                      if tr.destination is not None]
            delivered_flits=len(received)
            delivered_control_flits=sum(tr.payload_index is None for tr in received)
            delivered_bits=FLIT_BITS*delivered_flits
            e=dict(self.energy[mid])
            # Architectural energy always excludes leakage. Router LUT entries
            # are dynamic energy, with the quiescent supply baseline removed.
            e['total_fj']=e['router_fj']+e['wire_fj']
            e['fj_useful_bit']=e['total_fj']/useful
            e['fj_delivered_bit']=e['total_fj']/delivered_bits
            # Separate intrinsic traversal from source serialization, pipeline
            # spacing and queue/backpressure waiting. Link lengths can change
            # the latter without changing router count or intrinsic latency.
            first_payload=min(v['time_ps'] for (d,k),v in self.deliveries[mid].items() if k==0)
            setup_finish=max((op.retired for op in program.operations if op.cls in ('header','route','setup') or op.feature.get('control')),default=packet.release_tick)
            results.append(dict(message_id=mid,topology=self.topology,source=packet.source_leaf,
                destinations=list(packet.destinations),kind=packet.kind,payload_flits=len(packet.payload),
                latency_ps=latency,completion_ps=last['time_ps'],router_ps=last['router_ps'],
                noc_ps=latency-last['wire_ps'],
                intrinsic_router_ps=last['router_ps'],wire_ps=last['wire_ps'],
                waiting_ps=latency-last['wire_ps']-last['router_ps'],distance_um=last['distance_um'],
                **latency_phases(packet.release_tick,setup_finish,first_payload,last['time_ps']),
                release_ps=packet.release_tick,setup_complete_ps=setup_finish,
                first_payload_ps=first_payload,useful_bits=useful,route_bits=program.route_bits,
                delivered_flits=delivered_flits,delivered_control_flits=delivered_control_flits,
                delivered_bits=delivered_bits,injected_bits=FLIT_BITS*len(program.injected),
                route_flits=len(program.injected)-len(packet.payload),
                route_transport_bits=(len(program.injected)-len(packet.payload))*FLIT_BITS,
                energy=e))
        return results

def simulate(topology, packets, config=None, luts=None, trace=False):
    sim=Simulator(topology,config,luts,trace)
    for packet in packets:sim.add(packet)
    result=sim.run()
    return result,sim
