# m06l04-03 · Produce six price updates across three keys

**Lesson:** [Log Compaction: A Topic As A Table](https://learnsome.tech/learn/kafka-course/m06l04) (lesson 6.4, module 6: Event-Driven: Outbox, CDC, Compaction) · Pro  
**Check:** Read along

## Goal

You can create a compacted Kafka topic, produce multiple updates for the same key, fold the full log into a key-value table in Python, and explain why compaction converges the log to the same result over time.

In the lesson: We produce six price updates across three keys: apple, banana, and cherry. Apple receives three updates and banana receives two. Cherry receives one and has no superseded record. The log now holds six records in arrival order. Before compaction, the full price history is visible. After compaction, the broker will remove the earlier apple and banana records and leave only the most recent value for each key.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/produce_prices.py`](starter/produce_prices.py): the listing from the lesson
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/setup.sh`](starter/setup.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/produce_prices.py` alongside the lesson.
2. On a machine that has what it needs, the lesson ran it with:

   ```sh
   bash setup.sh >/dev/null 2>&1
   docker run --rm --network m06l04-net -v "$PWD:/app" m06l04-client python produce_prices.py
   ```

## How to check

**Read along.** It needs Docker (or another container engine), which the lab sandbox does not have. Run it on a machine with Docker installed.

There is nothing to check: `./check m06l04-03` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m06l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
