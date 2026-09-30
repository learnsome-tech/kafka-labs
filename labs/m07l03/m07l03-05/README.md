# m07l03-05 · Stop two brokers: acks-all producer is rejected

**Lesson:** [Losing A Broker](https://learnsome.tech/learn/kafka-course/m07l03) (lesson 7.3, module 7: Operating A Cluster) · Pro  
**Check:** Read along

## Goal

You can stop a broker, confirm a new leader is elected and the topic stays available, restart the broker and verify it rejoins, and explain why two broker failures block acks-all writes.

In the lesson: Stop brokers two and three, leaving only broker one running. The producer configures acks set to all with a short timeout so the write blocked message surfaces quickly rather than waiting for the full default deadline. With only one broker alive, the ISR collapses to a single member, below the minimum of two. The leader refuses to acknowledge the write because it cannot collect the required number of in-sync confirmations. The cluster prefers a visible error over silently accepting a record it cannot safely replicate. This is the minimum ISR guarantee behaving exactly as designed.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/fail.py`](starter/fail.py): the listing from the lesson
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/setup.sh`](starter/setup.sh)
- [`starter/start-m07l03.sh`](starter/start-m07l03.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/fail.py` alongside the lesson.
2. On a machine that has what it needs, the lesson ran it with:

   ```sh
   bash setup.sh >/dev/null 2>&1
   docker stop m07l03-b2 m07l03-b3 && docker run --rm --network m07l03-net m07l03-c python fail.py
   ```

## How to check

**Read along.** It is a listing to read alongside the lesson, not a program to run.

There is nothing to check: `./check m07l03-05` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m07l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
