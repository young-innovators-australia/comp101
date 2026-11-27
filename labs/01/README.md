# Lab 01 · Your first C program

In this lab you will create a C file, compile it with `dcc`, run the result,
and submit your first program.

## Get ready

Log in to the YIA server with your own account. In the terminal, enter:

```sh
C101 test
mkdir -p ~/c101/lab01
cd ~/c101/lab01
pwd
ls
```

`pwd` shows which folder you are in. `ls` lists its files. It is normal for
`ls` to print nothing in a new folder. If `C101 test` does not show your
username, ask your tutor to check your connection.

## Exercise · Lab greeting

Create a file named `hello.c` in your editor. Write a program that prints
these two lines. The program does not read any input.

**Expected output**

```text
Hello, C101!
My first C program is running.
```

If you need a starting point, copy this into `hello.c`:

```c
#include <stdio.h>

int main(void) {
    // Write your printf calls here.
    return 0;
}
```

Use `printf` to print text. Put `\n` at the end of each line you print.
The `\n` tells C to move to the next line.

## Compile, test and submit

Save `hello.c`, then run:

```sh
dcc hello.c -o hello
./hello
```

The first command reads `hello.c` and builds a program named `hello`.
The second command runs that program from your current folder. If `dcc`
reports an error, read the first message, fix it in your editor, save, and
try compiling again.

When your output matches the example:

```sh
C101 autotest lab01_hello hello.c
C101 give lab01_hello hello.c
C101 summary
```

`give` saves a numbered copy of your submission. Check the autotest result
as well as the receipt. If you change your source file after giving it, run
`give` again to submit the new version.

Before you move on, show your tutor the program running or your submission
receipt. Try explaining which file you edit and which file you run.

Lab sequence adapted from [COMP1511 26T3 Lab 01](https://cgi.cse.unsw.edu.au/~cs1511/26T3/lab/01/questions).
