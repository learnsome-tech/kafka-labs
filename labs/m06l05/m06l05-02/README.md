# m06l05-02 · Start the broker and create the orders topic

**Lesson:** [Materialised Views From A Stream](https://learnsome.tech/learn/kafka-course/m06l05) (lesson 6.5, module 6: Event-Driven: Outbox, CDC, Compaction) · Pro  
**Check:** Checker

## Goal

You can produce a stream of order events, write a consumer that folds the stream into per-customer totals and prints a sorted table, and rebuild the same view from offset zero using a fresh consumer group to demonstrate that the stream is the source of truth.

In the lesson: A single-partition topic gives ordered delivery across all customers, which keeps the fold results deterministic. When the orders topic is ready, producers can write to it and the fold result will always be the same for the same sequence of events. With multiple partitions and keyed records, each customer would stay ordered within their assigned partition, giving the same guarantee per key.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/setup.sh`](starter/setup.sh): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m06l05/m06l05-02/starter`
2. Read `setup.sh`.
3. Edit `setup.sh` and check it: `bash -n setup.sh`.
4. Check it from the repository root: `./check m06l05-02`.

## How to check

`./check m06l05-02` copies `starter/` into a scratch directory and runs `bash -n setup.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the shell script parses (`bash -n`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m06l05) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
