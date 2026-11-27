#!/bin/sh
# Register the Lab 03 core activities on the running C101 service.
set -eu
labs_dir=$(CDPATH='' cd -- "$(dirname -- "$0")/.." && pwd)
. "$labs_dir/register-common.sh"

activity lab03_launch launch.c
test_case countdown '3\n' '3\n2\n1\n0\nLaunch!\n'
test_case at_zero '0\n' '0\nLaunch!\n'
test_case one_second '1\n' '1\n0\nLaunch!\n'

activity lab03_even_numbers even_numbers.c
test_case crosses_zero '-3 3\n' '-2\n0\n2\n'
test_case no_output '5 5\n' ''
test_case one_even '6 6\n' '6\n'

activity lab03_tile_pattern tile_pattern.c
test_case rectangle '3 5\n' '#.#.#\n.#.#.\n#.#.#\n'
test_case one_tile '1 1\n' '#\n'
test_case one_column '4 1\n' '#\n.\n#\n.\n'
