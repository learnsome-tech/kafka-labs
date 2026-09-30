# m07l04-04 · Consume two records and commit the group offset

**Lesson:** [Watching Lag And Sizing Partitions](https://learnsome.tech/learn/kafka-course/m07l04) (lesson 7.4, module 7: Operating A Cluster) · Pro  
**Check:** Checker

## Goal

You can measure consumer group lag with rpk group describe, add partitions to an existing topic, and explain why partition count is a ceiling on consumer-side parallelism.

In the lesson: The consumer reads from the earliest offset with auto-commit disabled so the code controls exactly when the position is saved. The consumer reads the first two records from partition zero and commits after reaching two, then breaks out of the loop. Only partition zero has records, so the consumer always reads from there. Disabling auto-commit and calling commit explicitly ensures the group coordinator records offset two as the committed position for partition zero before the program exits. The three remaining records in that partition will appear as lag in the next step.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/cons.py`](starter/cons.py): the listing from the lesson
- [`starter/prod.py`](starter/prod.py)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/setup.sh`](starter/setup.sh)
- [`starter/start-m07l04.sh`](starter/start-m07l04.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m07l04/m07l04-04/starter`
2. Read `cons.py`.
3. Edit `cons.py` and check it: `python3 -m py_compile cons.py`.
4. Check it from the repository root: `./check m07l04-04`.

## How to check

`./check m07l04-04` copies `starter/` into a scratch directory and runs `python3 -m py_compile cons.py` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the Python program compiles (`python3 -m py_compile`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m07l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
