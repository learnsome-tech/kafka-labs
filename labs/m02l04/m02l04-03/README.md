# m02l04-03 · No-batch producer with batch-size one

**Lesson:** [Batching, Linger And Throughput](https://learnsome.tech/learn/kafka-course/m02l04) (lesson 2.4, module 2: Producers: Keys, Batches And Acks) · Pro  
**Check:** Read along

## Goal

You can configure batch-size, linger-ms, and compression-type on a KafkaProducer and explain what each setting trades against to increase throughput.

In the lesson: Setting batch-size to one forces the producer to treat each record as its own batch, which means every record travels in a separate network request. Setting linger-ms to zero removes any waiting; the producer dispatches the moment a record is ready. Together these two settings maximize the number of round trips to the broker: ten records produce ten separate requests. The program sends all ten without calling get after each one, so the sends pipeline over a single connection; flush waits for all ten to be acknowledged before returning. This is the baseline for the comparison: maximum round trips, minimum batch efficiency, all ten records confirmed. The client image is built at this step and reused when running the second producer.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/no-batch.py`](starter/no-batch.py): the listing from the lesson
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/setup.sh`](starter/setup.sh)
- [`starter/start.sh`](starter/start.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/no-batch.py` alongside the lesson.
2. On a machine that has what it needs, the lesson ran it with:

   ```sh
   bash setup.sh >/dev/null 2>&1
   docker build -q -t m02l04-client .
   ```

## How to check

**Read along.** It needs Docker (or another container engine), which the lab sandbox does not have. Run it on a machine with Docker installed.

There is nothing to check: `./check m02l04-03` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m02l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
