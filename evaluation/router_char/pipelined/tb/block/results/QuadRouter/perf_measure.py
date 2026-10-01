#!/usr/bin/env python3
"""Dedicated physical performance cases for QuadRouter; see tb/block/README.md."""
from pathlib import Path
import sys
sys.path.insert(0, str(Path(__file__).resolve().parents[3]))
from perf_common import run

CONFIG = {'module': 'QuadRouter',
 'mode': 'standard',
 'inputs': ['i'],
 'outputs': ['ch', 'oc0', 'oc1', 'oc2', 'oc3', 'od0', 'od1', 'od2', 'od3'],
 'destinations': {'ch': 'Ch',
                  'oc0': 'OC',
                  'oc1': 'OC',
                  'oc2': 'OC',
                  'oc3': 'OC',
                  'od0': 'OD',
                  'od1': 'OD',
                  'od2': 'OD',
                  'od3': 'OD'},
 'phase_cases': {'i': [
     (0x6, 'initial', False, 'first configuration -> Ch'),
     (0xF, 'initial', False, 'first data transfer -> OC1 and OD1'),
     (0xF, 'excluded', False, 'first transfer to the next child OC2/OD2'),
     (0xF, 'excluded', False, 'first OC1/OD1 transfer after counter reload'),
     (0xF, 'payload', False, 'second of four OC1/OD1 transfers'),
     (0xF, 'payload', False, 'third of four OC1/OD1 transfers'),
     (0xF, 'excluded', False, 'last OC1/OD1 transfer before counter reload'),
     (0xF, 'excluded', False, 'first OC2/OD2 transfer after counter reload'),
     (0xF, 'payload', False, 'second of four OC2/OD2 transfers'),
     (0xF, 'payload', False, 'third of four OC2/OD2 transfers'),
     (0xF, 'excluded', False, 'last OC2/OD2 transfer before counter reload'),
     (0x0, 'excluded', False, 'zero terminator broadcast'),
     (0x0, 'excluded', False, 'zero terminator broadcast'),
     (0x0, 'excluded', False, 'zero terminator broadcast'),
     (0x9, 'excluded', False, 'second configuration -> Ch; not cold start'),
     (0xF, 'excluded', False, 'first OC0/OD0 transfer after second configuration'),
     (0xF, 'excluded', False, 'first OC3/OD3 transfer after second configuration'),
     (0xF, 'excluded', False, 'first OC0/OD0 transfer after counter reload'),
     (0xF, 'payload', False, 'second of four OC0/OD0 transfers'),
     (0xF, 'payload', False, 'third of four OC0/OD0 transfers'),
     (0xF, 'excluded', False, 'last OC0/OD0 transfer before counter reload'),
     (0xF, 'excluded', False, 'first OC3/OD3 transfer after counter reload'),
     (0xF, 'payload', False, 'second of four OC3/OD3 transfers'),
     (0xF, 'payload', False, 'third of four OC3/OD3 transfers'),
     (0xF, 'excluded', False, 'last OC3/OD3 transfer before counter reload'),
     (0x0, 'excluded', False, 'zero terminator broadcast')]},
 'phase_representatives': {'initial': {'I->Ch': 0, 'I->OC': 1, 'I->OD': 1},
                           'payload': {'I->OC': 5, 'I->OD': 5}},
 'phase_columns': {'initial': ['OD', 'OC', 'Ch'], 'payload': ['OD', 'OC']},
 'initial_title': 'Initial / First Transfer To Each Output Class',
 'payload_title': 'Streaming / Steady-State Sample',
 'phase_notes': [
     'Each initial delay starts at its own corresponding input: I[0]=6 for Ch, I[1]=F for the first OC/OD outputs (child 1).',
     'Streaming uses I[5], the third consecutive OC1/OD1 transfer in a four-nibble burst after counter reload. It is not the first or last nibble of that burst.',
     'Ch has no streaming column. Later configurations, zero broadcasts, and counter-reload boundary transfers remain in the audit but are excluded from the two tables.',
     'All eight non-boundary streaming inputs are classified explicitly; the table is one representative sample, not an average or the fastest transfer across configurations.',
     'OC and OD share a buffered transfer and supply window; their energy entries must not be added.'],
 'notes': ['Physical QuadRouter transfers are 4-bit nibbles; the requested /32 energy '
           'normalization is only a reporting convention, not a measured 32-bit transfer.',
           'Buffered OC/OD outputs follow an already acknowledged input. Recovery is N/A when input ack low precedes output valid. '
           'Observed request-to-counter-response and request-withdrawal-to-spacer waits are subtracted; other internal loop work is retained.']}

if __name__ == '__main__':
    run(CONFIG, __file__)
