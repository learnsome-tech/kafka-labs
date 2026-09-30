# m02l02-03 · Write the keyed producer and build the image

**Lesson:** [Keys And Ordering Per Partition](https://learnsome.tech/learn/kafka-course/m02l02) (lesson 2.2, module 2: Producers: Keys, Batches And Acks) · Pro  
**Check:** Checker

## Goal

You can produce records with keys, explain why the same key always lands in the same partition, and show that ordering is guaranteed within a partition but not across partitions.

In the lesson: The producer carries a key-serializer that converts each key string into bytes before hashing. Two keys alternate across six iterations: order-one on even indices, order-two on odd indices. This interleaving is deliberate; it sends the keys in a mixed order at the application level so you can observe whether Kafka preserves insertion order across keys. The answer is that it does not, and cannot, because the two keys go to different partitions. Within each partition, the offset increases with each record; across partitions, there is no relationship between offset numbers. The program prints the key, the partition, and the offset for each send so you can see the routing decision immediately rather than waiting for a consumer to read back the results.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/producer.py`](starter/producer.py): the listing from the lesson
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/setup.sh`](starter/setup.sh)
- [`starter/start.sh`](starter/start.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m02l02/m02l02-03/starter`
2. Read `producer.py`.
3. Edit `producer.py` and check it: `python3 -m py_compile producer.py`.
4. Check it from the repository root: `./check m02l02-03`.

## How to check

`./check m02l02-03` copies `starter/` into a scratch directory and runs `python3 -m py_compile producer.py` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the Python program compiles (`python3 -m py_compile`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m02l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
