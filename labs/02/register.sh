#!/bin/sh
# Register the Lab 02 activities on the running C101 service.
set -eu
labs_dir=$(CDPATH='' cd -- "$(dirname -- "$0")/.." && pwd)
. "$labs_dir/register-common.sh"

activity lab02_score_total score_total.c
test_case two_rounds '8 11\n' '8 + 11 = 19\n'
test_case zero_first '0 6\n' '0 + 6 = 6\n'
test_case zero_second '4 0\n' '4 + 0 = 4\n'

activity lab02_temperature temperature.c
test_case below '-3\n' 'Below freezing\n'
test_case freezing '0\n' 'At freezing\n'
test_case above '8\n' 'Above freezing\n'

activity lab02_share_cards share_cards.c
test_case leftovers '17 5\n' 'Each: 3\nLeft over: 2\n'
test_case exact_split '12 4\n' 'Each: 3\nLeft over: 0\n'
test_case more_players '3 5\n' 'Each: 0\nLeft over: 3\n'
test_case empty_pile '0 1\n' 'Each: 0\nLeft over: 0\n'
