# m04l04-02 · Broker, main topic, and dead letter topic ready

**Lesson:** [Poison Messages And Dead Letter Topics](https://learnsome.tech/learn/kafka-course/m04l04) (lesson 4.4, module 4: Delivery Guarantees And Transactions) · Pro  
**Check:** Read along

## Goal

You can implement a consumer that routes malformed records to a dead letter topic with an error header, and explain why a single poison message blocks an entire partition if the exception is not caught.

In the lesson: The setup creates two topics: the main orders topic and the dead letter queue topic. The dead letter queue is a normal Kafka topic with no special broker configuration. It differs from the main topic only in convention: the application agrees that records landing there are ones that failed processing. Both topics use a single partition for this lesson, and the image is built quietly before either topic receives a record.

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

There is nothing to check: `./check m04l04-02` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m04l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
