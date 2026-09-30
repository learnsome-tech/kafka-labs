# m02l02-03 · Write the keyed producer and build the image

**Lesson:** [Keys And Ordering Per Partition](https://learnsome.tech/learn/kafka-course/m02l02) (lesson 2.2, module 2: Producers: Keys, Batches And Acks) · Pro  
**Check:** Read along

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

1. Read `starter/producer.py` alongside the lesson.
2. On a machine that has what it needs, the lesson ran it with:

   ```sh
   bash setup.sh >/dev/null 2>&1
   docker build -q -t m02l02-client .
   ```

## How to check

**Read along.** It needs Docker (or another container engine), which the lab sandbox does not have. Run it on a machine with Docker installed.

There is nothing to check: `./check m02l02-03` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m02l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
