# m04l03-06 · Aborted transaction: read-committed sees nothing

**Lesson:** [Transactions And Exactly Once Semantics](https://learnsome.tech/learn/kafka-course/m04l03) (lesson 4.3, module 4: Delivery Guarantees And Transactions) · Pro  
**Check:** Checker

## Goal

You can write a transactional Kafka producer that commits and aborts, explain what read-committed isolation means for a consumer, and describe why a read-committed consumer sees zero records from an aborted transaction.

In the lesson: This program sends three records inside a transaction and then calls abort instead of commit. The abort marker tells the broker to treat the entire batch as rolled back. The read-committed consumer that follows the abort reads from the earliest offset and waits the full timeout period, but the output shows zero records from the abort. The physical records are present in the partition log, but the broker withholds them from any read-committed subscriber because the transaction was not committed. This is the second half of the guarantee: an abort is invisible to a correctly configured consumer, regardless of how many bytes the aborted batch wrote to the log.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/abort.py`](starter/abort.py): the listing from the lesson
- [`starter/commit.py`](starter/commit.py)
- [`starter/reader.py`](starter/reader.py)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/setup.sh`](starter/setup.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m04l03/m04l03-06/starter`
2. Read `abort.py`.
3. Edit `abort.py` and check it: `python3 -m py_compile abort.py`.
4. Check it from the repository root: `./check m04l03-06`.

## How to check

`./check m04l03-06` copies `starter/` into a scratch directory and runs `python3 -m py_compile abort.py` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the Python program compiles (`python3 -m py_compile`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m04l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
