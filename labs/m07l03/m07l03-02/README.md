# m07l03-02 · Start the cluster, topic, and minimum ISR setting

**Lesson:** [Losing A Broker](https://learnsome.tech/learn/kafka-course/m07l03) (lesson 7.3, module 7: Operating A Cluster) · Pro  
**Check:** Checker

## Goal

You can stop a broker, confirm a new leader is elected and the topic stays available, restart the broker and verify it rejoins, and explain why two broker failures block acks-all writes.

In the lesson: The startup script follows the same three-broker pattern, but without the auto-remove flag. Without auto-remove, a stopped container stays on disk and can be restarted by name, which is how a real operator would recover a rebooted machine. The script creates the orders topic with three partitions and replication factor three, then sets minimum ISR to two. The two OK lines confirm the topic creation and the configuration change. All later steps in this lesson will stop and restart containers rather than removing them.

## Files

- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/start-m07l03.sh`](starter/start-m07l03.sh): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m07l03/m07l03-02/starter`
2. Read `start-m07l03.sh`.
3. Edit `start-m07l03.sh` and check it: `bash -n start-m07l03.sh`.
4. Check it from the repository root: `./check m07l03-02`.

## How to check

`./check m07l03-02` copies `starter/` into a scratch directory and runs `bash -n start-m07l03.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the shell script parses (`bash -n`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m07l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
