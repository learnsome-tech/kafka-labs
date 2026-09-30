# m06l03-04 · Read the change stream from the replication slot

**Lesson:** [Change Data Capture In Principle](https://learnsome.tech/learn/kafka-course/m06l03) (lesson 6.3, module 6: Event-Driven: Outbox, CDC, Compaction) · Pro  
**Check:** Checker

## Goal

You can start a Postgres instance with logical replication enabled, create a replication slot using the test decoding plugin, and read the change stream produced by insert and update statements to explain how a connector such as Debezium turns those changes into Kafka events.

In the lesson: The slot function returns every change recorded since the slot was created. We select only the data column and filter out the transaction boundary lines so the output shows only the content changes. The insert row names the table, the operation, and each column with its type and new value. The update row shows the same structure with the new item value. This is what a connector reads: a structured description of every data change in the order it was applied.

## Files

- [`starter/cdc.sh`](starter/cdc.sh): the listing from the lesson
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/setup.sh`](starter/setup.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m06l03/m06l03-04/starter`
2. Read `cdc.sh`.
3. Edit `cdc.sh` and check it: `bash -n cdc.sh`.
4. Check it from the repository root: `./check m06l03-04`.

## How to check

`./check m06l03-04` copies `starter/` into a scratch directory and runs `bash -n cdc.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the shell script parses (`bash -n`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m06l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
