# m07l04-04 · Consume two records and commit the group offset

**Lesson:** [Watching Lag And Sizing Partitions](https://learnsome.tech/learn/kafka-course/m07l04) (lesson 7.4, module 7: Operating A Cluster) · Pro  
**Check:** Read along

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

1. Read `starter/cons.py` alongside the lesson.
2. On a machine that has what it needs, the lesson ran it with:

   ```sh
   bash setup.sh >/dev/null 2>&1
   docker build -q -t m07l04-c . && docker run --rm --network m07l04-net m07l04-c python cons.py
   ```

## How to check

**Read along.** It needs Docker (or another container engine), which the lab sandbox does not have. Run it on a machine with Docker installed.

There is nothing to check: `./check m07l04-04` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m07l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
