# m04l02-03 · Producer: five records with two duplicate event ids

**Lesson:** [Idempotent Consumers And Deduplication Keys](https://learnsome.tech/learn/kafka-course/m04l02) (lesson 4.2, module 4: Delivery Guarantees And Transactions) · Pro  
**Check:** Checker

## Goal

You can implement a consumer that skips duplicate events using an event identifier in the record value, and explain when a deduplication table is necessary versus when natural idempotence is sufficient.

In the lesson: The producer sends five records across three order keys. Two of them are exact repeats: order-one carries event identifier evt-a twice and order-two carries evt-b twice. Each value is a JSON object with an event-ID field and an amount. The event identifier is stable: the same business event always carries the same identifier, whether it arrives from a producer retry, a replay, or a redelivery. When the program finishes, we have confirmed that two are duplicates and the consumer will need to detect and skip them.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/producer.py`](starter/producer.py): the listing from the lesson
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/setup.sh`](starter/setup.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m04l02/m04l02-03/starter`
2. Read `producer.py`.
3. Edit `producer.py` and check it: `python3 -m py_compile producer.py`.
4. Check it from the repository root: `./check m04l02-03`.

## How to check

`./check m04l02-03` copies `starter/` into a scratch directory and runs `python3 -m py_compile producer.py` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the Python program compiles (`python3 -m py_compile`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m04l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
