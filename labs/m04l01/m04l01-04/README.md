# m04l01-04 · Producer: each event sent twice

**Lesson:** [Duplicates Are The Default](https://learnsome.tech/learn/kafka-course/m04l01) (lesson 4.1, module 4: Delivery Guarantees And Transactions) · Pro  
**Check:** Checker

## Goal

You can name the three events that produce a duplicate in a Kafka pipeline and explain why at-least-once delivery is the deliberate default.

In the lesson: The producer creates three order events and sends each one twice in a loop, simulating what happens when a network acknowledgement is lost and the client retries. This is not a contrived scenario: kafka-python's own retry logic does exactly this if the broker is slow to acknowledge and the retries setting is above zero. Here we make it explicit so the effect is visible on screen. Each pair of sends shares the same key, so both copies land in the same partition in the order they were sent. After the program confirms that all six records reached the broker, the consumer can read.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/producer.py`](starter/producer.py): the listing from the lesson
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/setup.sh`](starter/setup.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m04l01/m04l01-04/starter`
2. Read `producer.py`.
3. Edit `producer.py` and check it: `python3 -m py_compile producer.py`.
4. Check it from the repository root: `./check m04l01-04`.

## How to check

`./check m04l01-04` copies `starter/` into a scratch directory and runs `python3 -m py_compile producer.py` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the Python program compiles (`python3 -m py_compile`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m04l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
