# m04l03-04 · Read-committed consumer sees the three records

**Lesson:** [Transactions And Exactly Once Semantics](https://learnsome.tech/learn/kafka-course/m04l03) (lesson 4.3, module 4: Delivery Guarantees And Transactions) · Pro  
**Check:** Checker

## Goal

You can write a transactional Kafka producer that commits and aborts, explain what read-committed isolation means for a consumer, and describe why a read-committed consumer sees zero records from an aborted transaction.

In the lesson: The consumer sets isolation-level to read-committed, which tells the broker to deliver only records from committed transactions. After the commit from the previous segment, all three records are immediately visible. The consumer reads from the earliest offset, drains the partition, and lists the keys in the order they were committed. The output shows that the consumer sees three records and names each one in sequence. This is the atomic-visibility half of the transaction guarantee: records appear together as a committed batch or not at all.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/commit.py`](starter/commit.py)
- [`starter/reader.py`](starter/reader.py): the listing from the lesson
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/setup.sh`](starter/setup.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m04l03/m04l03-04/starter`
2. Read `reader.py`.
3. Edit `reader.py` and check it: `python3 -m py_compile reader.py`.
4. Check it from the repository root: `./check m04l03-04`.

## How to check

`./check m04l03-04` copies `starter/` into a scratch directory and runs `python3 -m py_compile reader.py` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the Python program compiles (`python3 -m py_compile`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m04l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
