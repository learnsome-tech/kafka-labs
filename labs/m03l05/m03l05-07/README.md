# m03l05-07 · Write and run the at-most-once consumer

**Lesson:** [At Most Once, At Least Once](https://learnsome.tech/learn/kafka-course/m03l05) (lesson 3.5, module 3: Consumers And Consumer Groups) · Pro  
**Check:** Read along

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

1. Read `starter/amo.py` alongside the lesson.
2. On a machine that has what it needs, the lesson ran it with:

   ```sh
   bash setup.sh >/dev/null 2>&1
   docker run --rm --network m03l05-net -v $PWD:/app m03l05-client python amo.py
   ```

## How to check

**Read along.** It needs Docker (or another container engine), which the lab sandbox does not have. Run it on a machine with Docker installed.

There is nothing to check: `./check m03l05-07` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m03l05) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
