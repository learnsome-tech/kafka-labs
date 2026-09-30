# m01l03-02 · Start a network and broker

**Lesson:** [Topics, Partitions And Where A Record Lands](https://learnsome.tech/learn/kafka-course/m01l03) (lesson 1.3, module 1: The Log: Topics, Partitions And Offsets) · Free  
**Check:** Checker

## Goal

You can create a topic with multiple partitions, produce keyed records and confirm they always land on the same partition, and explain why unkeyed records do not carry ordering guarantees.

In the lesson: We start the broker on a new network with names tied to this lesson. The recipe is identical to what the previous lesson used, and it will be the same in every lesson that follows: a single Redpanda node in dev container mode on an isolated Docker network. The only things that change from lesson to lesson are the names we attach to the network and broker container, ensuring each lesson has its own isolated environment on the shared machine. The script prints the network identifier and the container identifier when it completes. The broker will be ready to receive commands after the short sleep at the start of the next segment.

## Files

- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/start.sh`](starter/start.sh): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m01l03/m01l03-02/starter`
2. Read `start.sh`.
3. Edit `start.sh` and check it: `bash -n start.sh`.
4. Check it from the repository root: `./check m01l03-02`.

## How to check

`./check m01l03-02` copies `starter/` into a scratch directory and runs `bash -n start.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the shell script parses (`bash -n`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m01l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
