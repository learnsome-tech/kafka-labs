# m04l03-03 · Transactional producer: commit three records

**Lesson:** [Transactions And Exactly Once Semantics](https://learnsome.tech/learn/kafka-course/m04l03) (lesson 4.3, module 4: Delivery Guarantees And Transactions) · Pro  
**Check:** Checker

## Goal

You can write a transactional Kafka producer that commits and aborts, explain what read-committed isolation means for a consumer, and describe why a read-committed consumer sees zero records from an aborted transaction.

In the lesson: The producer is configured with a transactional identifier, which enables the transactional API. It calls init-transactions once at startup to register with the broker, then calls begin-transaction before the sends. All three records go into the open transaction. Commit-transaction sends a commit marker to the broker, which makes all three records visible simultaneously. The full sequence is: init, begin, send, send, send, commit. No records are delivered to any read-committed consumer until that marker arrives. The program then confirms the commit with a single printed line, and the next segment reads them back with isolation-level read-committed.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/commit.py`](starter/commit.py): the listing from the lesson
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/setup.sh`](starter/setup.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m04l03/m04l03-03/starter`
2. Read `commit.py`.
3. Edit `commit.py` and check it: `python3 -m py_compile commit.py`.
4. Check it from the repository root: `./check m04l03-03`.

## How to check

`./check m04l03-03` copies `starter/` into a scratch directory and runs `python3 -m py_compile commit.py` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the Python program compiles (`python3 -m py_compile`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m04l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
