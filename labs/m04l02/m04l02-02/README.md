# m04l02-02 · Broker up, topic ready for deduplication demo

**Lesson:** [Idempotent Consumers And Deduplication Keys](https://learnsome.tech/learn/kafka-course/m04l02) (lesson 4.2, module 4: Delivery Guarantees And Transactions) · Pro  
**Check:** Checker

## Goal

You can implement a consumer that skips duplicate events using an event identifier in the record value, and explain when a deduplication table is necessary versus when natural idempotence is sufficient.

In the lesson: The setup brings up a dedicated broker and network for this lesson, waits for the broker to accept connections, builds the client image, and creates the topic. The topic is ready when the status column prints the confirmation, and all subsequent segments in this lesson share the same broker and image. The naming convention encodes the lesson identifier so the topic cannot collide with topics from other lessons running on the same machine at the same time.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/setup.sh`](starter/setup.sh): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m04l02/m04l02-02/starter`
2. Read `setup.sh`.
3. Edit `setup.sh` and check it: `bash -n setup.sh`.
4. Check it from the repository root: `./check m04l02-02`.

## How to check

`./check m04l02-02` copies `starter/` into a scratch directory and runs `bash -n setup.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the shell script parses (`bash -n`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m04l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
