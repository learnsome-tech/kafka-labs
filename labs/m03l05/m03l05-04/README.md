# m03l05-04 · Write the at-least-once consumer

**Lesson:** [At Most Once, At Least Once](https://learnsome.tech/learn/kafka-course/m03l05) (lesson 3.5, module 3: Consumers And Consumer Groups) · Pro  
**Check:** Checker

## Goal

You can implement at-least-once and at-most-once consumers, simulate a crash mid-batch, and explain which records are reprocessed or lost in each scenario.

In the lesson: The at-least-once consumer prints each record as it processes it, then commits only after the entire batch is done. The crash flag causes the script to exit immediately after processing the record at offset two, without reaching the commit call. This simulates an application crash: three records were processed, the work was done, but the offset was never committed. The script closes the consumer on its way out so the demonstration is quick; a process that really dies skips that step, and the broker hands its partition to a replacement only after the session timeout expires. The broker still shows the pipeline group at offset zero for partition zero. The next run will start from the beginning.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/alo.py`](starter/alo.py): the listing from the lesson
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/setup.sh`](starter/setup.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m03l05/m03l05-04/starter`
2. Read `alo.py`.
3. Edit `alo.py` and check it: `python3 -m py_compile alo.py`.
4. Check it from the repository root: `./check m03l05-04`.

## How to check

`./check m03l05-04` copies `starter/` into a scratch directory and runs `python3 -m py_compile alo.py` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the Python program compiles (`python3 -m py_compile`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m03l05) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
