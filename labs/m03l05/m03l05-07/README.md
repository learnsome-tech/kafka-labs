# m03l05-07 · Write and run the at-most-once consumer

**Lesson:** [At Most Once, At Least Once](https://learnsome.tech/learn/kafka-course/m03l05) (lesson 3.5, module 3: Consumers And Consumer Groups) · Pro  
**Check:** Checker

## Goal

You can implement at-least-once and at-most-once consumers, simulate a crash mid-batch, and explain which records are reprocessed or lost in each scenario.

In the lesson: The at-most-once consumer commits the offset immediately after receiving each record, before printing or doing any other work. If the process crashed between the commit call and the print statement, the committed offset would already be past that record, and a restart would skip it entirely. No duplicate, but a lost record. The output here shows all six records processed normally, because no crash occurs. The group for at-most-once uses a different group-ID than the at-least-once pipeline so both groups start from the beginning independently. In practice, at-most-once is acceptable when losing an occasional record is tolerable and duplicates are not, such as certain analytics pipelines where approximate counts matter more than exact ones.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/alo.py`](starter/alo.py)
- [`starter/amo.py`](starter/amo.py): the listing from the lesson
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/setup.sh`](starter/setup.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m03l05/m03l05-07/starter`
2. Read `amo.py`.
3. Edit `amo.py` and check it: `python3 -m py_compile amo.py`.
4. Check it from the repository root: `./check m03l05-07`.

## How to check

`./check m03l05-07` copies `starter/` into a scratch directory and runs `python3 -m py_compile amo.py` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the Python program compiles (`python3 -m py_compile`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m03l05) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
