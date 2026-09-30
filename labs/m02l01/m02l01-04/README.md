# m02l01-04 · Send ten records and read the offsets

**Lesson:** [A Producer In Python](https://learnsome.tech/learn/kafka-course/m02l01) (lesson 2.1, module 2: Producers: Keys, Batches And Acks) · Pro  
**Check:** Read along

## Goal

You can write a KafkaProducer that sends records to a topic, block on the returned future, and read the partition and offset from the metadata the broker returns.

In the lesson: The run script mounts the working directory into the container so the program file is available at the path the Python interpreter expects. The container joins the lesson network, so the broker hostname resolves and the Kafka connection succeeds. Each of the ten records lands in partition zero because the topic has a single partition and the records carry no key, so the broker has only one place to put them. The offsets ascend from zero to nine, one per record, in exactly the order the loop produced them. Because the loop calls get after every send, the records are acknowledged one at a time rather than batched. This blocking pattern makes the output straightforward: each printed line reflects one completed round trip from the producer to the broker and back, with the assigned offset confirmed by the broker itself.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/producer.py`](starter/producer.py)
- [`starter/run.sh`](starter/run.sh): the listing from the lesson
- [`starter/setup.sh`](starter/setup.sh)
- [`starter/start.sh`](starter/start.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/run.sh` alongside the lesson.
2. On a machine that has what it needs, the lesson ran it with:

   ```sh
   bash setup.sh >/dev/null 2>&1
   bash run.sh
   ```

## How to check

**Read along.** The listing does not run cleanly in the lab sandbox (it relies on something the sandbox cannot provide), so the site shows it read-only.

There is nothing to check: `./check m02l01-04` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m02l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
