# m02l02-04 · Send six interleaved records and see routing

**Lesson:** [Keys And Ordering Per Partition](https://learnsome.tech/learn/kafka-course/m02l02) (lesson 2.2, module 2: Producers: Keys, Batches And Acks) · Pro  
**Check:** Checker

## Goal

You can produce records with keys, explain why the same key always lands in the same partition, and show that ordering is guaranteed within a partition but not across partitions.

In the lesson: Even though the sends alternate between order-one and order-two, each key routes to its own partition consistently. Order-one lands in partition zero every time, and order-two lands in partition one every time. The offset within each partition increments independently: order-one occupies offsets zero, one, and two in partition zero; order-two occupies offsets zero, one, and two in partition one. There is no record numbered offset three in either partition. The interleaved application-level sends did not mix the records inside the partitions. This demonstrates the central contract Kafka offers when you use keys: ordering is per-key, which means per-partition, and that ordering holds even under concurrent producers sending the same key.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/producer.py`](starter/producer.py)
- [`starter/run.sh`](starter/run.sh): the listing from the lesson
- [`starter/setup.sh`](starter/setup.sh)
- [`starter/start.sh`](starter/start.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m02l02/m02l02-04/starter`
2. Read `run.sh`.
3. Edit `run.sh` and check it: `bash -n run.sh`.
4. Check it from the repository root: `./check m02l02-04`.

## How to check

`./check m02l02-04` copies `starter/` into a scratch directory and runs `bash -n run.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the shell script parses (`bash -n`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m02l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
