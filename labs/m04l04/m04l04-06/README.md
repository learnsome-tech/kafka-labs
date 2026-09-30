# m04l04-06 · Inspect the dead letter topic

**Lesson:** [Poison Messages And Dead Letter Topics](https://learnsome.tech/learn/kafka-course/m04l04) (lesson 4.4, module 4: Delivery Guarantees And Transactions) · Pro  
**Check:** Checker

## Goal

You can implement a consumer that routes malformed records to a dead letter topic with an error header, and explain why a single poison message blocks an entire partition if the exception is not caught.

In the lesson: Reading the dead letter topic shows the full context of the failure. The key identifies which shipment failed. The raw value is the exact bytes the consumer received. The error header carries the parse exception message, which pinpoints the failure to the first character of the value. An operator can use this to diagnose the problem without touching the main topic or the consumer group offset. If the producer is fixed and the record needs reprocessing, it can be read from the dead letter topic and re-sent to the main orders topic.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/dlq.py`](starter/dlq.py)
- [`starter/dlqread.py`](starter/dlqread.py): the listing from the lesson
- [`starter/producer.py`](starter/producer.py)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/setup.sh`](starter/setup.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m04l04/m04l04-06/starter`
2. Read `dlqread.py`.
3. Edit `dlqread.py` and check it: `python3 -m py_compile dlqread.py`.
4. Check it from the repository root: `./check m04l04-06`.

## How to check

`./check m04l04-06` copies `starter/` into a scratch directory and runs `python3 -m py_compile dlqread.py` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the Python program compiles (`python3 -m py_compile`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m04l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
