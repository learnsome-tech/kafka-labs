# m02l05-04 · Send the duplicates and observe the offsets

**Lesson:** [Idempotent Producers And Retries](https://learnsome.tech/learn/kafka-course/m02l05) (lesson 2.5, module 2: Producers: Keys, Batches And Acks) · Pro  
**Check:** Read along

## Goal

You can configure enable-idempotence on a KafkaProducer, explain what sequence numbers the broker uses to detect duplicate produce requests, and demonstrate that without idempotence a simulated retry produces duplicate records.

In the lesson: The original sends occupy offsets zero through two, and the retry sends occupy offsets three through five. The broker treated all six sends as distinct records because the producer carried no sequence numbers for it to check. From the broker's perspective, these were six separate legitimate writes. The retry loop did not know that offsets zero, one, and two already existed; it received fresh offsets three, four, and five and reported success. Any consumer that reads all six records will see payment-zero appear twice, payment-one appear twice, and payment-two appear twice. That is the duplicate hazard that idempotence is designed to eliminate.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/run.sh`](starter/run.sh): the listing from the lesson
- [`starter/send-twice.py`](starter/send-twice.py)
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

There is nothing to check: `./check m02l05-04` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m02l05) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
