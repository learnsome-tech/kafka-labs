# m06l05-06 · Rebuild the view from offset zero with a new group

**Lesson:** [Materialised Views From A Stream](https://learnsome.tech/learn/kafka-course/m06l05) (lesson 6.5, module 6: Event-Driven: Outbox, CDC, Compaction) · Pro  
**Check:** Checker

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

1. Go to the starter: `cd labs/m06l05/m06l05-06/starter`
2. Read `rebuild.py`.
3. Edit `rebuild.py` and check it: `python3 -m py_compile rebuild.py`.
4. Check it from the repository root: `./check m06l05-06`.

## How to check

`./check m06l05-06` copies `starter/` into a scratch directory and runs `python3 -m py_compile rebuild.py` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the Python program compiles (`python3 -m py_compile`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m06l05) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
