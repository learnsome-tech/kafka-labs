# m06l04-06 · Inspect the compaction configuration

**Lesson:** [Log Compaction: A Topic As A Table](https://learnsome.tech/learn/kafka-course/m06l04) (lesson 6.4, module 6: Event-Driven: Outbox, CDC, Compaction) · Pro  
**Check:** Read along

## Goal

You can create a compacted Kafka topic, produce multiple updates for the same key, fold the full log into a key-value table in Python, and explain why compaction converges the log to the same result over time.

In the lesson: The describe command with the config flag shows the topic settings. The cleanup policy is compact, confirming the cleanup policy is compact rather than delete. The minimum cleanable dirty ratio is set to zero point zero one and the segment size is ten thousand bytes. These values tell the broker to compact aggressively. In a real topic you would use larger segment sizes and a higher ratio.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/fold_prices.py`](starter/fold_prices.py)
- [`starter/produce_prices.py`](starter/produce_prices.py)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`starter/setup.sh`](starter/setup.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/session.sh` alongside the lesson.
2. On a machine that has what it needs, the lesson ran it with:

   ```sh
   bash setup.sh >/dev/null 2>&1
   B=m06l04-broker
   docker exec $B rpk topic describe m06l04-prices -c
   ```

## How to check

**Read along.** It needs Docker (or another container engine), which the lab sandbox does not have. Run it on a machine with Docker installed.

There is nothing to check: `./check m06l04-06` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m06l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
