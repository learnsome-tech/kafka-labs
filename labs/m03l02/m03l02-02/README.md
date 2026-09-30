# m03l02-02 · Start the broker and network

**Lesson:** [Consumer Groups And Partition Assignment](https://learnsome.tech/learn/kafka-course/m03l02) (lesson 3.2, module 3: Consumers And Consumer Groups) · Pro  
**Check:** Checker

## Goal

You can explain how Kafka assigns partitions across a consumer group, run a consumer that reports its assignment, and read rpk group describe to verify committed offsets per partition.

In the lesson: The setup script creates a dedicated Docker network for this lesson and launches the Redpanda broker in the same way as before: single-node developer mode, one thread, five hundred and twelve megabytes. The sleep gives the broker time to complete its startup sequence before anything else tries to connect to it.

## Files

- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/setup.sh`](starter/setup.sh): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m03l02/m03l02-02/starter`
2. Read `setup.sh`.
3. Edit `setup.sh` and check it: `bash -n setup.sh`.
4. Check it from the repository root: `./check m03l02-02`.

## How to check

`./check m03l02-02` copies `starter/` into a scratch directory and runs `bash -n setup.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the shell script parses (`bash -n`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m03l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
