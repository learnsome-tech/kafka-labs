# m01l01-02 · Start a network and broker

**Lesson:** [Why A Log And Not A Queue](https://learnsome.tech/learn/kafka-course/m01l01) (lesson 1.1, module 1: The Log: Topics, Partitions And Offsets) · Free  
**Check:** Checker

## Goal

You can explain why Kafka uses an append-only log rather than a delete-on-read queue, produce records to a topic, and consume them independently from two separate sessions.

In the lesson: Every lesson in this module creates its own Docker network first, then starts a single Redpanda broker on that network. The network is how the broker and any clients we run later find each other by container name without needing IP addresses. We start Redpanda in dev container mode, which trades cluster features for a fast startup on a single processor core with half a gigabyte of memory. The overprovisioned flag tells Redpanda not to warn if those settings are lower than what the host offers. The advertise kafka addr setting is the critical networking parameter: when a Kafka client connects and asks the broker where to send data, the broker replies with this address. We set it to the container name so every container on the same network can reach it by that name. Two hex identifiers appear in the output panel: the first is the network and the second is the broker container.

## Files

- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/start.sh`](starter/start.sh): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m01l01/m01l01-02/starter`
2. Read `start.sh`.
3. Edit `start.sh` and check it: `bash -n start.sh`.
4. Check it from the repository root: `./check m01l01-02`.

## How to check

`./check m01l01-02` copies `starter/` into a scratch directory and runs `bash -n start.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the shell script parses (`bash -n`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m01l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
