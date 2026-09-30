# m04l05-02 · Broker and four topics for the retry pipeline

**Lesson:** [Retries With Backoff Topics](https://learnsome.tech/learn/kafka-course/m04l05) (lesson 4.5, module 4: Delivery Guarantees And Transactions) · Pro  
**Check:** Checker

## Goal

You can implement a retry-topic pattern that routes a failing record through numbered tiers before landing it in a dead letter queue, and explain how an attempt counter in the value makes routing deterministic.

In the lesson: The pipeline needs four topics: the primary orders topic where records enter, two numbered retry topics for the first and second retry attempts, and the dead letter queue for records that exhaust all retries. All four are ordinary Kafka topics with a single partition each. The tier names encode the retry position so a consumer reading retry-one knows it is handling a first attempt. When all four topics are confirmed, the broker is ready and the client image is already built.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/setup.sh`](starter/setup.sh): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m04l05/m04l05-02/starter`
2. Read `setup.sh`.
3. Edit `setup.sh` and check it: `bash -n setup.sh`.
4. Check it from the repository root: `./check m04l05-02`.

## How to check

`./check m04l05-02` copies `starter/` into a scratch directory and runs `bash -n setup.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the shell script parses (`bash -n`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m04l05) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
