# C101 lab materials

This repository contains the C programming labs for Young Innovators
Australia. The Markdown specs are the student handouts. The registration
scripts are for tutors who manage activities on the YIA server.

## Students

Start with the [lab index](labs/README.md). Write and compile your programs on
the YIA server using `dcc`. The lab sheets show which `C101 autotest` and
`C101 give` commands to run from your own Linux account.

## Register the labs on YIA

Run these from the course checkout as a C101 staff user. You need a running
C101 service and a system-wide installation of `dcc` and its dependencies,
including Valgrind. The sandbox can see tools under `/usr`, including
`/usr/local/bin`. Update C101 to the runner that supports `dcc` before
registering these labs.

```sh
C101 test
command -v dcc
valgrind --quiet /bin/true
sh labs/01/register.sh
sh labs/02/register.sh
sh labs/03/register.sh
C101 admin summary
```

Register only the weeks you want to make available. You can rerun a script
to fill in missing activities and tests after an interruption. Existing tests
with matching names are kept. To update a test, remove it with
`C101 admin remove-test ACTIVITY TEST`, then rerun the week's script. This
appends the replacement. Use `C101 admin add-test --index N` directly if you
need to preserve its original position.

## Maintain or adapt a lab

- `labs/NN/README.md` specifies filenames, activity IDs, input and output.
- `labs/NN/register.sh` creates the week's activities and lists their public
  test cases. Copy one of these scripts as a starting point for a new lab.
- `labs/register-common.sh` contains the shared C101 registration helpers.
- `labs/compile-and-run.sh` is staged with each test. It compiles the submitted
  C file with `dcc -Werror -fsanitize=valgrind`, then passes test input to
  the executable. Compiler warnings fail the test. C101 compares stdout,
  stderr and exit status. Valgrind mode avoids the large virtual address
  reservation made by AddressSanitizer under the default `dcc` settings.

Keep each activity ID, source filename and example in sync when you edit a
lab. Register it on a test course and submit a sample solution before
announcing it to students. Keep private test cases and student submissions
out of this repository.

C101 itself lives in the separate [course-submission repository](https://github.com/young-innovators-australia/course-submission),
which documents installing the service and building tests for other courses.

## Publish the handouts

The Markdown is readable directly on GitHub. For a dedicated student URL,
publish it with GitHub Pages and use a shared page theme later. Once the course
repository is on GitHub, a maintainer or admin can choose **Settings → Pages →
Deploy from a branch → main → / (root)**. The root README is the entry page
and links to the lab handouts. Share the URL shown in Pages settings.

GitHub Pages serves the handouts. Students still run `dcc` and `C101` on YIA.
See [GitHub Pages publishing settings](https://docs.github.com/en/pages/getting-started-with-github-pages/configuring-a-publishing-source-for-your-github-pages-site).
