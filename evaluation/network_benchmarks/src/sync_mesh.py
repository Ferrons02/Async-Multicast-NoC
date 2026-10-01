"""Single-cycle, 2+2-slot xpipes switches with exact XY multicast in a mesh."""
from dataclasses import dataclass
from functools import lru_cache

from .config import value
from .helpers import tile_xy
from .single_flit import Edge, RouteNode, SinglePacket, simulate


@dataclass(frozen=True)
class MeshConfig:
    clock_period_ns: float = value('sync_mesh', 'clock_ns')
    router_energy_pj_bit: float = value('sync_mesh', 'router_energy_pj_bit')
    energy_shared_fraction: float = 1.
    input_slots: int = value('su2024_table_iii', 'sync_input_slots')
    output_slots: int = value('su2024_table_iii', 'sync_output_slots')
    # Minimum logical width: 10 source bits + 16 exact destination bits.
    # Su2024 Table III does not report the physical data-path width.
    packet_bits: int = value('sync_mesh', 'packet_bits')
    filter_energy_pj: float = 0.
    # Optimistic integrated hop budget, not a claimed extracted timing closure.
    # The source paper establishes switch latency, not inter-switch boundaries.
    wire_timing: str = 'integrated_cycle'
    pitch_um: float = value('common_substrate', 'tile_um')
    wire_activity: float = value('common_substrate', 'wire_activity')
    wire_vdd: float = value('common_substrate', 'vdd')
    resistance_ohm_um: float = value('common_substrate', 'resistance_ohm_um')
    capacitance_ff_um: float = value('common_substrate', 'capacitance_ff_um')

    def __post_init__(self):
        if self.wire_timing not in ('integrated_cycle', 'registered_link'):
            raise ValueError('Unknown synchronous wire timing convention')


def xy_path(source, destination):
    x, y = tile_xy(source)
    dx, dy = tile_xy(destination)
    result = [(x, y)]
    while x != dx:
        x += 1 if dx > x else -1
        result.append((x, y))
    while y != dy:
        y += 1 if dy > y else -1
        result.append((x, y))
    return tuple(result)


@lru_cache(maxsize=16384)
def multicast_tree(source, destinations):
    """Union of XY paths: each directed edge appears once, with no reconvergence."""
    outgoing = {}
    incoming = {}
    for destination in destinations:
        path = xy_path(source, destination)
        for a, b in zip(path, path[1:]):
            outgoing.setdefault(a, set()).add(b)
            if b in incoming and incoming[b] != a:
                raise AssertionError('XY multicast tree unexpectedly reconverged')
            incoming[b] = a
    return tuple((a, tuple(sorted(children))) for a, children in sorted(outgoing.items()))


def _port(a, b):
    delta = b[0] - a[0], b[1] - a[1]
    return {(1, 0): 'east', (-1, 0): 'west', (0, 1): 'north', (0, -1): 'south'}[delta]


def compile_packet(event, packet_id=0, config=None):
    config = config or MeshConfig()
    destinations = tuple(sorted(set(event.destination_tiles)))
    outgoing = dict(multicast_tree(event.source_tile, destinations))
    local = {tile_xy(destination): destination for destination in destinations}

    def visit(xy, input_port):
        node = RouteNode(xy, input_port)
        if xy in local:
            node.outputs.append(Edge('local', 0., destination=local[xy]))
        for target in outgoing.get(xy, ()):
            length = (abs(xy[0] - target[0]) + abs(xy[1] - target[1])) * config.pitch_um
            node.outputs.append(Edge(_port(xy, target), length,
                                     child=visit(target, _port(target, xy))))
        return node

    return SinglePacket(packet_id, event.source_tile, event.source_neuron,
                        destinations, destinations, visit(tile_xy(event.source_tile), 'local'), 0.)


def run(events, config=None, batch_max=1):
    """One multicast packet per event; routing and timing do not depend on cap."""
    config = config or MeshConfig()
    result = simulate(events, config, compile_packet, 'sync_mesh', synchronous=True)
    result.update(clock_period_ns=config.clock_period_ns,
                  destination_mask_bits=16,
                  packet_width_status='minimum_logical_width_physical_width_unreported',
                  wire_timing=config.wire_timing,
                  wire_timing_status='explicit_unverified_network_clock_boundary_assumption',
                  energy_shared_fraction=config.energy_shared_fraction)
    return result
