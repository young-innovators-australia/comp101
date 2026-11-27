# Lab 03 · Loops and patterns

In this lab you will repeat actions with `while`, combine loops with
conditions, and use one loop inside another. Complete the core exercises in
[Lab 02](../02/README.md) first. Try the extension after the three exercises
below, once your tutor has covered `enum` and `struct`.

```sh
mkdir -p ~/c101/lab03
cd ~/c101/lab03
```

Create each source file in your editor. You can assume all input is valid.
Your programs should print only the specified output.

## 1. Launch countdown

**File:** `launch.c` · **Activity:** `lab03_launch`

Read one integer from 0 to 20. Print that number, then count down to zero.
Print one number per line. After printing zero, print `Launch!` on its
own line.

**Input**

```text
3
```

**Expected output**

```text
3
2
1
0
Launch!
```

If the input is `0`, the first line should already be `0` and the next
line should be `Launch!`.

**Hint:** Decide where your counter starts, when the loop should stop,
and how the counter changes after each line.

```sh
dcc launch.c -o launch
./launch
C101 autotest lab03_launch launch.c
C101 give lab03_launch launch.c
```

## 2. Even numbers

**File:** `even_numbers.c` · **Activity:** `lab03_even_numbers`

Read two integers, `start` and `end`, with
`-20 <= start <= end <= 20`. Walk through the numbers from `start` to
`end`, including both ends, and print the even numbers in increasing
order, one per line. If there are no even numbers in the range, print
nothing.

**Input**

```text
-3 3
```

**Expected output**

```text
-2
0
2
```

Also try `5 5`, which prints nothing, and `6 6`, which prints one line
containing `6`.

**Hint:** Advance the counter by one every time through the loop, even
when you skip printing. A number is even if its remainder when divided
by two is zero.

```sh
dcc even_numbers.c -o even_numbers
./even_numbers
C101 autotest lab03_even_numbers even_numbers.c
C101 give lab03_even_numbers even_numbers.c
```

## 3. Tile pattern

**File:** `tile_pattern.c` · **Activity:** `lab03_tile_pattern`

Read the number of rows, then the number of columns. Each is between 1 and
12. Print a rectangle of tiles. Number the rows and columns starting from
zero. At each position, print `#` if the row number plus the column
number is even and `.` otherwise. Use no spaces between tiles.

**Input**

```text
3 5
```

**Expected output**

```text
#.#.#
.#.#.
#.#.#
```

For input `1 1`, print one line containing `#`.

**Hint:** The outer `while` loop chooses a row. The inner `while` loop
prints all the columns in that row. Start the column counter back at zero
for each row and print the newline after the inner loop finishes. If you
get stuck, try filling the whole rectangle with `#` before adding the rule
that alternates the tiles.

```sh
dcc tile_pattern.c -o tile_pattern
./tile_pattern
C101 autotest lab03_tile_pattern tile_pattern.c
C101 give lab03_tile_pattern tile_pattern.c
```

## Optional extension · Fix the scoreboard

Create `score_record.c` and try this one with your tutor. Define an
`enum team` with two choices, `RED` and `BLUE`. Define a
`struct score` that holds the team and its number of points.
Read a team choice (1 for red, 2 for blue) and then an integer score between
0 and 100. Store both values in one `struct score`. Print the team name
and the points as one line.

| Input | Expected output |
| --- | --- |
| `1 7` | `Red: 7` |
| `2 0` | `Blue: 0` |

Compile with `dcc score_record.c -o score_record` and try both examples
with `./score_record`. There is no C101 submission for this extension.

Loop and data-type topics adapted from [COMP1511 26T3 Lab 03](https://cgi.cse.unsw.edu.au/~cs1511/26T3/lab/03/questions).
