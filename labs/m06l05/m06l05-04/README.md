# m06l05-04 · Fold the stream into per-customer totals

**Lesson:** [Materialised Views From A Stream](https://learnsome.tech/learn/kafka-course/m06l05) (lesson 6.5, module 6: Event-Driven: Outbox, CDC, Compaction) · Pro  
**Check:** Read along

## Goal

You can produce a stream of order events, write a consumer that folds the stream into per-customer totals and prints a sorted table, and rebuild the same view from offset zero using a fresh consumer group to demonstrate that the stream is the source of truth.

In the lesson: The consumer reads every event from offset zero and accumulates the amount field per customer key. When the stream is exhausted the dictionary is printed in alphabetical order: customer a totals two hundred and ten, customer b one hundred and thirty, and customer c two hundred. These are the materialised view values. Nothing outside the consumer computed these totals: they emerge from folding the event stream.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/produce_orders.py`](starter/produce_orders.py)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/setup.sh`](starter/setup.sh)
- [`starter/totals.py`](starter/totals.py): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/totals.py` alongside the lesson.
2. On a machine that has what it needs, the lesson ran it with:

   ```sh
   bash setup.sh >/dev/null 2>&1
   docker run --rm --network m06l05-net -v "$PWD:/app" m06l05-client python totals.py
   ```

## How to check

**Read along.** It needs Docker (or another container engine), which the lab sandbox does not have. Run it on a machine with Docker installed.

There is nothing to check: `./check m06l05-04` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m06l05) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
