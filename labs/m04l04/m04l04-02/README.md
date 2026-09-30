# m04l04-02 · Broker, main topic, and dead letter topic ready

**Lesson:** [Poison Messages And Dead Letter Topics](https://learnsome.tech/learn/kafka-course/m04l04) (lesson 4.4, module 4: Delivery Guarantees And Transactions) · Pro  
**Check:** Checker

## Goal

You can implement a consumer that routes malformed records to a dead letter topic with an error header, and explain why a single poison message blocks an entire partition if the exception is not caught.

In the lesson: The setup creates two topics: the main orders topic and the dead letter queue topic. The dead letter queue is a normal Kafka topic with no special broker configuration. It differs from the main topic only in convention: the application agrees that records landing there are ones that failed processing. Both topics use a single partition for this lesson, and the image is built quietly before either topic receives a record.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/setup.sh`](starter/setup.sh): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m04l04/m04l04-02/starter`
2. Read `setup.sh`.
3. Edit `setup.sh` and check it: `bash -n setup.sh`.
4. Check it from the repository root: `./check m04l04-02`.

## How to check

`./check m04l04-02` copies `starter/` into a scratch directory and runs `bash -n setup.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the shell script parses (`bash -n`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m04l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
