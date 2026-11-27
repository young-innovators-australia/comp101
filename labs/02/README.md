# Lab 02 · Input, arithmetic and decisions

This is the catch-up lab. Complete the three core exercises before starting
Lab 03. If you have never compiled or submitted in C101, start with
[Lab 01](../01/README.md).

By the end of this lab you should be able to read an integer with `scanf`,
do arithmetic with integers, and choose an action with `if` and `else`.

```sh
mkdir -p ~/c101/lab02
cd ~/c101/lab02
```

Create each `.c` file in your editor. Assume the input meets the exercise
requirements. Print only the requested output. For each exercise, compile
with `dcc` and try the examples before running C101.

## 1. Scoreboard total

**File:** `score_total.c` · **Activity:** `lab02_score_total`

A team earns points in two rounds. Read two integers in order and print the
addition as `first + second = total`, replacing the words with the numbers.
Each score is between 0 and 100.

| Input | Expected output |
| --- | --- |
| `8 11` | `8 + 11 = 19` |
| `0 6` | `0 + 6 = 6` |
| `4 0` | `4 + 0 = 4` |

**Hint:** `scanf("%d %d", &first, &second);` stores two numbers in two
variables. Declare the variables before reading into them. Use one `%d`
in your `printf` format for each integer you print.

```sh
dcc score_total.c -o score_total
./score_total
C101 autotest lab02_score_total score_total.c
C101 give lab02_score_total score_total.c
```

## 2. Temperature check

**File:** `temperature.c` · **Activity:** `lab02_temperature`

Read one integer temperature between -50 and 50 degrees Celsius. Print
`Below freezing` for a temperature below zero, `At freezing` for zero, or
`Above freezing` for a temperature above zero.

| Input | Expected output |
| --- | --- |
| `-3` | `Below freezing` |
| `0` | `At freezing` |
| `8` | `Above freezing` |

**Hint:** Try an `if`, an `else if`, and an `else`. Use `==` to check
whether two values are equal. `=` assigns a value to a variable.

```sh
dcc temperature.c -o temperature
./temperature
C101 autotest lab02_temperature temperature.c
C101 give lab02_temperature temperature.c
```

## 3. Share the cards

**File:** `share_cards.c` · **Activity:** `lab02_share_cards`

You are dealing cards. Read the number of cards, then the number of players.
Deal the same number of cards to every player and keep any leftover cards
in the middle. Print the number each player gets and the number left over
on separate lines, using the labels shown below. The pile has 0 to 100
cards and there are 1 to 10 players.

**Input**

```text
17 5
```

**Expected output**

```text
Each: 3
Left over: 2
```

Try `12 4` too. Each player should get 3 cards and there should be 0 left
over. What should happen for `3 5`?

**Hint:** With integers, `17 / 5` gives 3 whole groups. The remainder
operator, also called modulus, gives what is left: `17 % 5` is 2 because
three groups of five use 15 cards. The number of players will never be zero.

```sh
dcc share_cards.c -o share_cards
./share_cards
C101 autotest lab02_share_cards share_cards.c
C101 give lab02_share_cards share_cards.c
```

## Check in with your tutor

Pick one input for each branch of `temperature.c`. Then explain the
difference between `/` and `%` using a cards example of your own.

Exercise sequence adapted from [COMP1511 26T3 Lab 02](https://cgi.cse.unsw.edu.au/~cs1511/26T3/lab/02/questions).
