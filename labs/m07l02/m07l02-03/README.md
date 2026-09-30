# m07l02-03 · Read the in-sync replica set from the admin API

**Lesson:** [In-Sync Replicas And Minimum ISR](https://learnsome.tech/learn/kafka-course/m07l02) (lesson 7.2, module 7: Operating A Cluster) · Pro  
**Check:** Checker

## Goal

You can read the in-sync replica set for a topic, set the minimum in-sync replica count, and explain why that number gates whether acks-all writes succeed.

In the lesson: The Kafka admin client exposes the in-sync replica set through the describe topics call. The program prints each partition's full replica list alongside its current in-sync set. With all three brokers healthy and caught up, the in-sync replica set matches the full replica list for every partition. Broker identifiers zero, one, and two appear in both columns. The build output line is masked. This is the baseline: all replicas are current, so an acks-all write would be acknowledged as soon as all three have persisted the record.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/isr.py`](starter/isr.py): the listing from the lesson
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/setup.sh`](starter/setup.sh)
- [`starter/start-m07l02.sh`](starter/start-m07l02.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m07l02/m07l02-03/starter`
2. Read `isr.py`.
3. Edit `isr.py` and check it: `python3 -m py_compile isr.py`.
4. Check it from the repository root: `./check m07l02-03`.

## How to check

`./check m07l02-03` copies `starter/` into a scratch directory and runs `python3 -m py_compile isr.py` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the Python program compiles (`python3 -m py_compile`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m07l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
