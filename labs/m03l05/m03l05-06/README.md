# m03l05-06 · Restart after the crash, observe the duplicate

**Lesson:** [At Most Once, At Least Once](https://learnsome.tech/learn/kafka-course/m03l05) (lesson 3.5, module 3: Consumers And Consumer Groups) · Pro  
**Check:** Read along

## Goal

You can implement at-least-once and at-most-once consumers, simulate a crash mid-batch, and explain which records are reprocessed or lost in each scenario.

In the lesson: Without the crash flag, the consumer starts from offset zero again because no commit was ever made. Records p, q, and r are processed a second time, then s, t, and u are processed for the first time. This is the at-least-once guarantee in action: every record that was produced is eventually processed, but the three records before the simulated crash are processed twice. After the loop ends, commit is called, which advances the pipeline group's committed offset to six. A third run would find nothing to read. The application must be ready to handle duplicates, or it must detect them by checking whether each record has already been applied to its downstream store.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/alo.py`](starter/alo.py): the listing from the lesson
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/setup.sh`](starter/setup.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/alo.py` alongside the lesson.
2. On a machine that has what it needs, the lesson ran it with:

   ```sh
   bash setup.sh >/dev/null 2>&1
   docker run --rm --network m03l05-net -v $PWD:/app m03l05-client python alo.py
   ```

## How to check

**Read along.** It needs Docker (or another container engine), which the lab sandbox does not have. Run it on a machine with Docker installed.

There is nothing to check: `./check m03l05-06` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m03l05) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
