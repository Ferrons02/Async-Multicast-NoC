#!/usr/bin/env python3
"""Dedicated physical performance cases for MltcUnit; see tb/block/README.md."""
from pathlib import Path
import sys
sys.path.insert(0, str(Path(__file__).resolve().parents[3]))
from perf_common import run

CONFIG = {
    'module': 'MltcUnit', 'mode': 'mltc',
    # Both words carry route data; the second also carries the zero terminator.
    'route_inputs': [(5, 0x348D6312), (6, 0x84100002)],
    'route_outputs': [('c2', 4, 0x4D318002), ('c3', 4, 0x86410002)],
    'payload_input': (7, 0xBADBAD13),
    'payload_outputs': [('c2', 5, 0xBADBAD13), ('c3', 5, 0xBADBAD13)],
    # Existing longer case: two full route words, then a third continuation.
    'long_route_inputs': [(8, 0x348C6312), (9, 0x84121482), (10, 0x44212003)],
    'long_route_outputs': [('c2', 6, 0x4C311212), ('c2', 7, 0x44200002),
                           ('c3', 6, 0x86844812), ('c3', 7, 0x20000002)],
    'notes': [
        'Primary route: 348D6312, 84100002 -> C2=4D318002, C3=86410002.',
        'The second primary input contains three nonzero routing nibbles and zero termination/padding; it is not full.',
        'The reference TB has no two fully occupied route words producing exactly one complete word per child.',
        'Additional route: 348C6312, 84121482, 44212003; the first two words have seven nonzero route nibbles each.',
        'That complete batch requires three inputs and produces two words per child. It is reported separately.',
    ],
}

if __name__ == '__main__':
    run(CONFIG, __file__)
