# m06l05-04 · Fold the stream into per-customer totals

**Lesson:** [Materialised Views From A Stream](https://learnsome.tech/learn/kafka-course/m06l05) (lesson 6.5, module 6: Event-Driven: Outbox, CDC, Compaction) · Pro  
**Check:** Checker

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

1. Go to the starter: `cd labs/m06l05/m06l05-04/starter`
2. Read `totals.py`.
3. Edit `totals.py` and check it: `python3 -m py_compile totals.py`.
4. Check it from the repository root: `./check m06l05-04`.

## How to check

`./check m06l05-04` copies `starter/` into a scratch directory and runs `python3 -m py_compile totals.py` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the Python program compiles (`python3 -m py_compile`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m06l05) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
