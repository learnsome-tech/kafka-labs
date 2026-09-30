# m02l02-05 · The hash partitioner and custom routing

**Lesson:** [Keys And Ordering Per Partition](https://learnsome.tech/learn/kafka-course/m02l02) (lesson 2.2, module 2: Producers: Keys, Batches And Acks) · Pro  
**Check:** Read along

## Goal

You can produce records with keys, explain why the same key always lands in the same partition, and show that ordering is guaranteed within a partition but not across partitions.

In the lesson: The default partitioner uses the murmur-two algorithm to hash the key bytes, then applies modulo to the total partition count. The algorithm is the same one the Java Kafka client uses, so a Python producer and a Java consumer agree on which records belong to which partition. Records sent without a key bypass the hash and use a round-robin or sticky strategy instead; those records carry no per-key ordering guarantee. You can replace the partitioner entirely by passing a callable to the partitioner argument of KafkaProducer. The callable receives the serialized key, the list of all partition numbers, and the list of currently available partitions; it returns one partition number. The code here routes any key whose first two bytes spell the letters e and u to partition zero, everything else to partition one. Custom partitioners are useful when your business logic requires explicit control over data placement.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/producer.py`](starter/producer.py)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/setup.sh`](starter/setup.sh)
- [`starter/start.sh`](starter/start.sh)
- [`starter/the-hash-partitioner-and-custom-routing.txt`](starter/the-hash-partitioner-and-custom-routing.txt): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/the-hash-partitioner-and-custom-routing.txt` alongside the lesson.
2. On a machine that has what it needs, the lesson ran it with:

   ```sh
   docker run --rm --network m02l02-net \
   -v "$PWD:/app" m02l02-client python producer.py
   ```

## How to check

**Read along.** It is a listing to read alongside the lesson, not a program to run.

There is nothing to check: `./check m02l02-05` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m02l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
