# m04l02-02 · Broker up, topic ready for deduplication demo

**Lesson:** [Idempotent Consumers And Deduplication Keys](https://learnsome.tech/learn/kafka-course/m04l02) (lesson 4.2, module 4: Delivery Guarantees And Transactions) · Pro  
**Check:** Read along

## Goal

You can implement a consumer that skips duplicate events using an event identifier in the record value, and explain when a deduplication table is necessary versus when natural idempotence is sufficient.

In the lesson: The setup brings up a dedicated broker and network for this lesson, waits for the broker to accept connections, builds the client image, and creates the topic. The topic is ready when the status column prints the confirmation, and all subsequent segments in this lesson share the same broker and image. The naming convention encodes the lesson identifier so the topic cannot collide with topics from other lessons running on the same machine at the same time.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/setup.sh`](starter/setup.sh): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/setup.sh` alongside the lesson.
2. On a machine that has what it needs, the lesson ran it with:

   ```sh
   bash setup.sh
   ```

## How to check

**Read along.** It needs Docker (or another container engine), which the lab sandbox does not have. Run it on a machine with Docker installed.

There is nothing to check: `./check m04l02-02` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m04l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
