# m04l01-05 · Consumer: count per key reveals the extras

**Lesson:** [Duplicates Are The Default](https://learnsome.tech/learn/kafka-course/m04l01) (lesson 4.1, module 4: Delivery Guarantees And Transactions) · Pro  
**Check:** Checker

## Goal

You can name the three events that produce a duplicate in a Kafka pipeline and explain why at-least-once delivery is the deliberate default.

In the lesson: The consumer reads from the earliest offset, groups records by key, and counts how many times each key appears. An application that sends each event once and expects each event to be processed once would count one per key. This consumer counts two per key, because the producer sent each event twice. The count shows two per key regardless of how fast the network runs, because a single partition preserves insertion order and the consumer drains the whole partition before printing. Each order has been processed twice, and downstream logic that increments a balance or charges a card would run twice as well.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/consumer.py`](starter/consumer.py): the listing from the lesson
- [`starter/producer.py`](starter/producer.py)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/setup.sh`](starter/setup.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m04l01/m04l01-05/starter`
2. Read `consumer.py`.
3. Edit `consumer.py` and check it: `python3 -m py_compile consumer.py`.
4. Check it from the repository root: `./check m04l01-05`.

## How to check

`./check m04l01-05` copies `starter/` into a scratch directory and runs `python3 -m py_compile consumer.py` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the Python program compiles (`python3 -m py_compile`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m04l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
