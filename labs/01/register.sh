#!/bin/sh
# Register the Lab 01 activity on the running C101 service.
set -eu
labs_dir=$(CDPATH='' cd -- "$(dirname -- "$0")/.." && pwd)
. "$labs_dir/register-common.sh"

activity lab01_hello hello.c
test_case greeting '' 'Hello, C101!\nMy first C program is running.\n'
