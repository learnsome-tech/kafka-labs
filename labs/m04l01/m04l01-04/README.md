# m04l01-04 · Producer: each event sent twice

**Lesson:** [Duplicates Are The Default](https://learnsome.tech/learn/kafka-course/m04l01) (lesson 4.1, module 4: Delivery Guarantees And Transactions) · Pro  
**Check:** Read along

## Goal

You can name the three events that produce a duplicate in a Kafka pipeline and explain why at-least-once delivery is the deliberate default.

In the lesson: The producer creates three order events and sends each one twice in a loop, simulating what happens when a network acknowledgement is lost and the client retries. This is not a contrived scenario: kafka-python's own retry logic does exactly this if the broker is slow to acknowledge and the retries setting is above zero. Here we make it explicit so the effect is visible on screen. Each pair of sends shares the same key, so both copies land in the same partition in the order they were sent. After the program confirms that all six records reached the broker, the consumer can read.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/producer.py`](starter/producer.py): the listing from the lesson
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/setup.sh`](starter/setup.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/producer.py` alongside the lesson.
2. On a machine that has what it needs, the lesson ran it with:

   ```sh
   bash setup.sh >/dev/null 2>&1
   docker run --rm --network m04l01-net -v "$PWD:/app" m04l01-client python producer.py
   ```

## How to check

**Read along.** It needs Docker (or another container engine), which the lab sandbox does not have. Run it on a machine with Docker installed.

There is nothing to check: `./check m04l01-04` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m04l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
