# Shared by the weekly register.sh scripts. Source after setting labs_dir.
case_dir=$(mktemp -d)
trap 'rm -r -- "$case_dir"' 0
trap 'exit 1' HUP INT TERM

# Create an activity unless it is already registered. Other failures stop setup.
activity() {
    activity_id=$1
    source_file=$2
    if C101 admin activity-summary "$activity_id" >/dev/null 2>&1; then
        printf 'Keeping activity %s\n' "$activity_id"
    else
        C101 admin create "$activity_id"
        printf 'Created activity %s\n' "$activity_id"
    fi
}

# Add a named public case. The last two arguments use \n for line breaks.
test_case() {
    test_name=$1
    printf '%b' "$2" > "$case_dir/stdin"
    printf '%b' "$3" > "$case_dir/stdout"
    if message=$(C101 admin add-test "$activity_id" "$test_name" \
        --stdin "$case_dir/stdin" --stdout "$case_dir/stdout" \
        --extra "$labs_dir/compile-and-run.sh" \
        --run ./compile-and-run.sh "$source_file" 2>&1); then
        printf 'Added %s / %s\n' "$activity_id" "$test_name"
    elif [ "$message" = 'C101: A test with that name already exists' ]; then
        printf 'Keeping %s / %s\n' "$activity_id" "$test_name"
    else
        printf '%s\n' "$message" >&2
        return 1
    fi
}
