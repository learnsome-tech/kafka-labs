# m02l05-03 · Write the non-idempotent duplicate producer

**Lesson:** [Idempotent Producers And Retries](https://learnsome.tech/learn/kafka-course/m02l05) (lesson 2.5, module 2: Producers: Keys, Batches And Acks) · Pro  
**Check:** Read along

## Goal

You can configure enable-idempotence on a KafkaProducer, explain what sequence numbers the broker uses to detect duplicate produce requests, and demonstrate that without idempotence a simulated retry produces duplicate records.

In the lesson: This producer uses acks all and disables automatic retries so each send is a single attempt. The first loop sends three records labelled payment-zero through payment-two and prints the offset each one receives. The second loop sends the same three byte strings again, simulating what a retry loop would do if the application did not track which records had already been delivered. In a real network failure scenario, the first loop might have succeeded at the broker but the acknowledgement was lost; the second loop is the application retrying without knowing the first attempt worked. Without idempotence at the broker level, both loops write their records and the topic ends up with six records, three of which are logical duplicates.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/send-twice.py`](starter/send-twice.py): the listing from the lesson
- [`starter/setup.sh`](starter/setup.sh)
- [`starter/start.sh`](starter/start.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/send-twice.py` alongside the lesson.
2. On a machine that has what it needs, the lesson ran it with:

   ```sh
   bash setup.sh >/dev/null 2>&1
   docker build -q -t m02l05-client .
   ```

## How to check

**Read along.** It needs Docker (or another container engine), which the lab sandbox does not have. Run it on a machine with Docker installed.

There is nothing to check: `./check m02l05-03` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m02l05) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
