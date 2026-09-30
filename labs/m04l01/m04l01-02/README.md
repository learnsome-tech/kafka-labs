# m04l01-02 · Broker up, topic created

**Lesson:** [Duplicates Are The Default](https://learnsome.tech/learn/kafka-course/m04l01) (lesson 4.1, module 4: Delivery Guarantees And Transactions) · Pro  
**Check:** Checker

## Goal

You can name the three events that produce a duplicate in a Kafka pipeline and explain why at-least-once delivery is the deliberate default.

In the lesson: The shell script creates an isolated network for this lesson, starts a single-node Redpanda broker on that network, and waits six seconds for it to accept connections. After the broker is ready, the script builds the Python client image from the kafka-python Dockerfile in this directory, then creates the topic. The topic name encodes the lesson so it cannot collide with anything running elsewhere on this machine. When you see the topic is ready, the setup is complete and every subsequent segment can reach the broker by name over the lesson network.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/setup.sh`](starter/setup.sh): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m04l01/m04l01-02/starter`
2. Read `setup.sh`.
3. Edit `setup.sh` and check it: `bash -n setup.sh`.
4. Check it from the repository root: `./check m04l01-02`.

## How to check

`./check m04l01-02` copies `starter/` into a scratch directory and runs `bash -n setup.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the shell script parses (`bash -n`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m04l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
