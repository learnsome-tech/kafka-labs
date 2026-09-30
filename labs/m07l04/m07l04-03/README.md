# m07l04-03 · Produce five records ahead of the consumer

**Lesson:** [Watching Lag And Sizing Partitions](https://learnsome.tech/learn/kafka-course/m07l04) (lesson 7.4, module 7: Operating A Cluster) · Pro  
**Check:** Checker

## Goal

You can measure consumer group lag with rpk group describe, add partitions to an existing topic, and explain why partition count is a ceiling on consumer-side parallelism.

In the lesson: The producer assigns each record to partition zero explicitly, which makes the output deterministic: five consecutive offsets accumulate in the same partition. In a real system you would use key-based routing so that related records are co-located, and the hash function determines which partition each key lands in. For this measurement exercise, forcing everything to one partition gives a clean baseline: five records in partition zero, nothing in partitions one or two. The build output is elided. Each line confirms partition zero offset zero through four were written and acknowledged.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/prod.py`](starter/prod.py): the listing from the lesson
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/setup.sh`](starter/setup.sh)
- [`starter/start-m07l04.sh`](starter/start-m07l04.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m07l04/m07l04-03/starter`
2. Read `prod.py`.
3. Edit `prod.py` and check it: `python3 -m py_compile prod.py`.
4. Check it from the repository root: `./check m07l04-03`.

## How to check

`./check m07l04-03` copies `starter/` into a scratch directory and runs `python3 -m py_compile prod.py` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the Python program compiles (`python3 -m py_compile`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m07l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
