#!/bin/sh
# Compile the submitted source passed by the test, then run it on test stdin.
set -eu
if ! command -v dcc >/dev/null 2>&1 || ! command -v valgrind >/dev/null 2>&1; then
    printf '%s\n' 'These tests need system-wide dcc and Valgrind installations.' >&2
    exit 1
fi
# Valgrind mode avoids AddressSanitizer's large virtual-memory reservation.
dcc -Werror -fsanitize=valgrind "$1" -o ./lab-program </dev/null >&2
exec ./lab-program
