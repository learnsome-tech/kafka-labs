# m07l02-05 · Confirm acks-all succeeds with a healthy ISR

**Lesson:** [In-Sync Replicas And Minimum ISR](https://learnsome.tech/learn/kafka-course/m07l02) (lesson 7.2, module 7: Operating A Cluster) · Pro  
**Check:** Read along

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

1. Read `starter/prod.py` alongside the lesson.
2. On a machine that has what it needs, the lesson ran it with:

   ```sh
   bash setup.sh >/dev/null 2>&1
   docker build -q -t m07l02-c . && docker run --rm --network m07l02-net m07l02-c python prod.py
   ```

## How to check

**Read along.** It needs Docker (or another container engine), which the lab sandbox does not have. Run it on a machine with Docker installed.

There is nothing to check: `./check m07l02-05` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m07l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
