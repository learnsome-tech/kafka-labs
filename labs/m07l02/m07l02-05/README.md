# m07l02-05 · Confirm acks-all succeeds with a healthy ISR

**Lesson:** [In-Sync Replicas And Minimum ISR](https://learnsome.tech/learn/kafka-course/m07l02) (lesson 7.2, module 7: Operating A Cluster) · Pro  
**Check:** Checker

## Goal

You can read the in-sync replica set for a topic, set the minimum in-sync replica count, and explain why that number gates whether acks-all writes succeed.

In the lesson: The producer is configured with acks set to all, meaning the leader must collect acknowledgements from all in-sync replicas before returning success to the calling code. The program sends three records to partition zero and waits for each future to resolve before printing the confirmation. With the full ISR of three brokers active, the producer confirms each write immediately. The cluster had three members in the in-sync set and the minimum was two, so there is headroom: a single follower could drop out and the writes would still succeed.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/isr.py`](starter/isr.py)
- [`starter/prod.py`](starter/prod.py): the listing from the lesson
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/setup.sh`](starter/setup.sh)
- [`starter/start-m07l02.sh`](starter/start-m07l02.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m07l02/m07l02-05/starter`
2. Read `prod.py`.
3. Edit `prod.py` and check it: `python3 -m py_compile prod.py`.
4. Check it from the repository root: `./check m07l02-05`.

## How to check

`./check m07l02-05` copies `starter/` into a scratch directory and runs `python3 -m py_compile prod.py` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the Python program compiles (`python3 -m py_compile`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m07l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
