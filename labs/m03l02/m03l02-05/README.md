# m03l02-05 · Run the consumer and observe partition assignment

**Lesson:** [Consumer Groups And Partition Assignment](https://learnsome.tech/learn/kafka-course/m03l02) (lesson 3.2, module 3: Consumers And Consumer Groups) · Pro  
**Check:** Checker

## Goal

You can explain how Kafka assigns partitions across a consumer group, run a consumer that reports its assignment, and read rpk group describe to verify committed offsets per partition.

In the lesson: The consumer is the only member of the billing group, so the broker assigns all three partitions to it during the first rebalance. The listener runs and prints the assignment in order. Then the for loop reads all six records across the three partitions, sorts them by partition and offset, and prints them. Partition zero holds values a and b at offsets zero and one. Partition one holds c and d. Partition two holds e and f. The consumer-timeout fires after three seconds of quiet, the loop ends, and the consumer commits its position and closes. If a second consumer had joined the same group while this one was running, a new rebalance would have fired, the listener would have printed a smaller assignment, and each consumer would have handled only its share of the partitions.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/consumer.py`](starter/consumer.py): the listing from the lesson
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/setup.sh`](starter/setup.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m03l02/m03l02-05/starter`
2. Read `consumer.py`.
3. Edit `consumer.py` and check it: `python3 -m py_compile consumer.py`.
4. Check it from the repository root: `./check m03l02-05`.

## How to check

`./check m03l02-05` copies `starter/` into a scratch directory and runs `python3 -m py_compile consumer.py` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the Python program compiles (`python3 -m py_compile`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m03l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
