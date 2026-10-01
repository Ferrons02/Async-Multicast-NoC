"""Su2025 two-level HBS routing and single-flit asynchronous tree adapter.

HBS stores a source-relative four-bit mask at each level. Reusing the low mask
in every selected upper region creates the Cartesian-product false positives.
The source-relative bit convention is explicit below. Fig. 4's lower example
has an inconsistent printed low nibble; see papers/PARAMETERS.md. We reproduce
its drawn destinations and illegal deliveries without special-casing a source.
"""
from dataclasses import dataclass
from functools import lru_cache

from evaluation.golden_model.router import Tree, path_between
from .config import value
from .helpers import tree_center_um, distance_um
from .single_flit import Edge, RouteNode, SinglePacket, simulate


@dataclass(frozen=True)
class HbsConfig:
    forward_latency_ns: float = value('hbs_tree', 'forward_latency_ns')
    # 534 MPkt/s in Su2024 Table I(b), transferred from its 40 nm experiment.
    # This is explicitly a proxy, not an independently measured 22 nm cycle.
    service_interval_ns: float = value('hbs_tree', 'service_interval_ns')
    router_energy_pj_bit: float = value('hbs_tree', 'router_energy_pj_bit')
    # Extra-output ratio .035/.17 from Table I transferred to Table III.
    # Shared + per-output form; never multiply the whole switch by fanout.
    energy_shared_fraction: float = 1 - value('energy_model', 'output_energy_fraction')
    input_slots: int = value('su2024_table_iii', 'async_input_slots')
    output_slots: int = value('su2024_table_iii', 'async_output_slots')
    packet_bits: int = value('hbs_tree', 'packet_bits')
    filter_energy_pj: float = value('filtering', 'filter_energy_pj')
    exact_routing: bool = False
    pitch_um: float = value('common_substrate', 'tile_um')
    wire_activity: float = value('common_substrate', 'wire_activity')
    wire_vdd: float = value('common_substrate', 'vdd')
    resistance_ohm_um: float = value('common_substrate', 'resistance_ohm_um')
    capacitance_ff_um: float = value('common_substrate', 'capacitance_ff_um')


@dataclass(frozen=True)
class HbsCode:
    high: int
    low: int

    @property
    def bits(self):
        return self.high << 4 | self.low

    @property
    def bit_string(self):
        return f'{self.high:04b}{self.low:04b}'


def relative_mask(source_digit, digits):
    """Bit 3 names source digit; following bits advance cyclically modulo 4."""
    return sum(1 << (3 - ((digit - source_digit) % 4)) for digit in set(digits))


def absolute_digits(mask, source_digit):
    """Rotate the source-relative nibble back to physical child port numbers."""
    if not 0 <= mask <= 15:
        raise ValueError('HBS level masks have four bits')
    return tuple((source_digit + relative) % 4 for relative in range(4)
                 if mask & (1 << (3 - relative)))


@lru_cache(maxsize=16384)
def encode(source, destinations):
    tree = Tree(2)
    high, low = tree.address(source)
    if not destinations:
        raise ValueError('HBS requires a destination')
    addresses = tuple(tree.address(destination) for destination in destinations)
    return HbsCode(relative_mask(high, (a[0] for a in addresses)),
                   relative_mask(low, (a[1] for a in addresses)))


def decode(source, code):
    high, low = Tree(2).address(source)
    return tuple(sorted(4 * region + child
                        for region in absolute_digits(code.high, high)
                        for child in absolute_digits(code.low, low)))


def delivered_set(source, destinations):
    return decode(source, encode(source, tuple(sorted(set(destinations)))))


@lru_cache(maxsize=16384)
def _route_template(source, destinations):
    tree = Tree(2)
    source_address = tree.address(source)
    start = source_address[:-1]
    outgoing = {}
    for destination in destinations:
        for a, b in path_between(start, tree.address(destination)):
            outgoing.setdefault(a, set()).add(b)
    return start, tuple((a, tuple(sorted(children))) for a, children in sorted(outgoing.items()))


def compile_packet(event, packet_id=0, config=None):
    config = config or HbsConfig()
    intended = tuple(sorted(set(event.destination_tiles)))
    delivered = intended if config.exact_routing else delivered_set(event.source_tile, intended)
    if not set(intended).issubset(delivered):
        raise AssertionError('HBS lost an intended destination')
    start, template = _route_template(event.source_tile, delivered)
    outgoing = dict(template)
    tree = Tree(2)

    def visit(address, input_port):
        node = RouteNode(address, input_port)
        for target in outgoing[address]:
            upward = len(target) < len(address)
            port = 4 if upward else target[-1]
            length = distance_um(tree_center_um(address, config.pitch_um),
                                 tree_center_um(target, config.pitch_um))
            if len(target) == 2:
                edge = Edge(port, length, destination=tree.leaf(target))
            else:
                edge = Edge(port, length, child=visit(target, address[-1] if upward else 4))
            node.outputs.append(edge)
        return node

    source_address = tree.address(event.source_tile)
    root = visit(start, source_address[-1])
    injection = distance_um(tree_center_um(source_address, config.pitch_um),
                            tree_center_um(start, config.pitch_um))
    return SinglePacket(packet_id, event.source_tile, event.source_neuron, intended,
                        delivered, root, injection)


def run(events, config=None, batch_max=1):
    """One packet per event, independent of the requested Our Tree batch cap."""
    config = config or HbsConfig()
    result = simulate(events, config, compile_packet, 'hbs_tree')
    result.update(hbs_route_bits=8, exact_routing_counterfactual=config.exact_routing,
                  energy_shared_fraction=config.energy_shared_fraction,
                  filtering_cost_pj=config.filter_energy_pj,
                  service_interval_status='transferred_40nm_packet_rate_proxy',
                  route_encoding_status='source_relative_convention_fig4_lower_nibble_discrepancy')
    return result
