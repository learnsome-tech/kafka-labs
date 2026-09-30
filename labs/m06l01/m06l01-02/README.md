# m06l01-02 · Start broker, database and build the client image

**Lesson:** [Dual Writes And Why They Lose Data](https://learnsome.tech/learn/kafka-course/m06l01) (lesson 6.1, module 6: Event-Driven: Outbox, CDC, Compaction) · Pro  
**Check:** Checker

## Goal

You can explain why writing to a database and a Kafka topic in sequence is not atomic, demonstrate both failure modes with runnable programs, and describe why neither write order eliminates the consistency risk.

In the lesson: The setup brings up a Redpanda broker and a Postgres database on the same Docker network, both named after this lesson. The sleep gives both services time to accept connections. Then we build the client image, which installs kafka-python and the Postgres driver together. Finally we create the orders table and the events topic. When the status column shows the topic is ready, both systems are running and waiting for writes.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/setup.sh`](starter/setup.sh): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m06l01/m06l01-02/starter`
2. Read `setup.sh`.
3. Edit `setup.sh` and check it: `bash -n setup.sh`.
4. Check it from the repository root: `./check m06l01-02`.

## How to check

`./check m06l01-02` copies `starter/` into a scratch directory and runs `bash -n setup.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the shell script parses (`bash -n`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m06l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
