# m03l05-05 · Simulate the crash mid-batch

**Lesson:** [At Most Once, At Least Once](https://learnsome.tech/learn/kafka-course/m03l05) (lesson 3.5, module 3: Consumers And Consumer Groups) · Pro  
**Check:** Checker

## Goal

You can implement at-least-once and at-most-once consumers, simulate a crash mid-batch, and explain which records are reprocessed or lost in each scenario.

In the lesson: The crash run processes records p, q, and r at offsets zero, one, and two, then hits the exit call. The process terminates with a non-zero exit code before reaching the commit. The pipeline group has no committed offset on the broker: not zero, because we never committed anything. The next time the consumer starts with auto-offset-reset set to earliest, it will begin at offset zero and process all six records, including the three that were already processed in this run.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/alo.py`](starter/alo.py): the listing from the lesson
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/setup.sh`](starter/setup.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m03l05/m03l05-05/starter`
2. Read `alo.py`.
3. Edit `alo.py` and check it: `python3 -m py_compile alo.py`.
4. Check it from the repository root: `./check m03l05-05`.

## How to check

`./check m03l05-05` copies `starter/` into a scratch directory and runs `python3 -m py_compile alo.py` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the Python program compiles (`python3 -m py_compile`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m03l05) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
