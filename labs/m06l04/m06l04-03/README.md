# m06l04-03 · Produce six price updates across three keys

**Lesson:** [Log Compaction: A Topic As A Table](https://learnsome.tech/learn/kafka-course/m06l04) (lesson 6.4, module 6: Event-Driven: Outbox, CDC, Compaction) · Pro  
**Check:** Checker

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

1. Go to the starter: `cd labs/m06l04/m06l04-03/starter`
2. Read `produce_prices.py`.
3. Edit `produce_prices.py` and check it: `python3 -m py_compile produce_prices.py`.
4. Check it from the repository root: `./check m06l04-03`.

## How to check

`./check m06l04-03` copies `starter/` into a scratch directory and runs `python3 -m py_compile produce_prices.py` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the Python program compiles (`python3 -m py_compile`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m06l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
