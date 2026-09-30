# m06l04-05 · Fold the log into a key-value table in Python

**Lesson:** [Log Compaction: A Topic As A Table](https://learnsome.tech/learn/kafka-course/m06l04) (lesson 6.4, module 6: Event-Driven: Outbox, CDC, Compaction) · Pro  
**Check:** Read along

## Goal

You can create a compacted Kafka topic, produce multiple updates for the same key, fold the full log into a key-value table in Python, and explain why compaction converges the log to the same result over time.

In the lesson: Rather than waiting for the broker to run compaction, the Python program builds the same table view in memory by iterating every record and keeping only the latest value per key. Because later records overwrite earlier ones for the same key in the dictionary, the final state matches what compaction will eventually leave in the log. The three final prices are apple at one point three, banana at zero point five five, and cherry at three. This fold is exactly what a consumer does to maintain a view from a compacted topic.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/fold_prices.py`](starter/fold_prices.py): the listing from the lesson
- [`starter/produce_prices.py`](starter/produce_prices.py)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/setup.sh`](starter/setup.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/fold_prices.py` alongside the lesson.
2. On a machine that has what it needs, the lesson ran it with:

   ```sh
   bash setup.sh >/dev/null 2>&1
   docker run --rm --network m06l04-net -v "$PWD:/app" m06l04-client python fold_prices.py
   ```

## How to check

**Read along.** It needs Docker (or another container engine), which the lab sandbox does not have. Run it on a machine with Docker installed.

There is nothing to check: `./check m06l04-05` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m06l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
