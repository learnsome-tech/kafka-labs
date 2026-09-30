# m06l03-02 · Start Postgres with logical replication and create a slot

**Lesson:** [Change Data Capture In Principle](https://learnsome.tech/learn/kafka-course/m06l03) (lesson 6.3, module 6: Event-Driven: Outbox, CDC, Compaction) · Pro  
**Check:** Checker

## Goal

You can start a Postgres instance with logical replication enabled, create a replication slot using the test decoding plugin, and read the change stream produced by insert and update statements to explain how a connector such as Debezium turns those changes into Kafka events.

In the lesson: We start the Postgres container with a flag that sets the write-ahead log level to logical. Without this flag the logical decoding interface is not available. After the database is ready we create a products table and call the slot creation function, selecting only the slot name so the output is clean and the slot name is confirmed. When the name appears, the database is holding its position in the log and ready to record every subsequent change.

## Files

- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/setup.sh`](starter/setup.sh): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m06l03/m06l03-02/starter`
2. Read `setup.sh`.
3. Edit `setup.sh` and check it: `bash -n setup.sh`.
4. Check it from the repository root: `./check m06l03-02`.

## How to check

`./check m06l03-02` copies `starter/` into a scratch directory and runs `bash -n setup.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the shell script parses (`bash -n`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m06l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
