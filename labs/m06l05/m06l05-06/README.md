# m06l05-06 · Rebuild the view from offset zero with a new group

**Lesson:** [Materialised Views From A Stream](https://learnsome.tech/learn/kafka-course/m06l05) (lesson 6.5, module 6: Event-Driven: Outbox, CDC, Compaction) · Pro  
**Check:** Read along

## Goal

You can produce a stream of order events, write a consumer that folds the stream into per-customer totals and prints a sorted table, and rebuild the same view from offset zero using a fresh consumer group to demonstrate that the stream is the source of truth.

In the lesson: A second consumer with a different group reads the same topic from offset zero and produces identical totals. The consumer group name is the only difference between the two programs. The identical output demonstrates that the stream is the reliable source of truth: any consumer that folds it from the beginning arrives at the same view. This is why replaying a Kafka topic is a valid strategy for rebuilding a lost or corrupted materialised view.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/produce_orders.py`](starter/produce_orders.py)
- [`starter/rebuild.py`](starter/rebuild.py): the listing from the lesson
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/setup.sh`](starter/setup.sh)
- [`starter/totals.py`](starter/totals.py)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/rebuild.py` alongside the lesson.
2. On a machine that has what it needs, the lesson ran it with:

   ```sh
   bash setup.sh >/dev/null 2>&1
   docker run --rm --network m06l05-net -v "$PWD:/app" m06l05-client python rebuild.py
   ```

## How to check

**Read along.** It needs Docker (or another container engine), which the lab sandbox does not have. Run it on a machine with Docker installed.

There is nothing to check: `./check m06l05-06` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m06l05) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
