# m02l03-06 · What the error looks like when ISR is too small

**Lesson:** [Acknowledgements: What Acks Means For Durability](https://learnsome.tech/learn/kafka-course/m02l03) (lesson 2.3, module 2: Producers: Keys, Batches And Acks) · Pro  
**Check:** Read along

## Goal

You can set acks on a KafkaProducer to zero, one, or all, explain what each level waits for, and describe what min-insync-replicas does when a write requires confirmation from more replicas than are currently available.

In the lesson: This program catches the error that occurs when a topic requires two in-sync replicas but only one is available. The producer sets acks to all and disables retries so the error surfaces immediately rather than being swallowed by the retry loop. The try block calls get on the future; when the broker rejects the write, kafka-python raises a KafkaError subclass. The except block prints the class name directly: NotEnoughReplicasError. The class name is deterministic because it maps to a fixed Kafka error code. This error appears on any cluster where the number of in-sync replicas drops below the min-insync-replicas setting, whether due to a broker crash or a rolling restart that temporarily reduces ISR size.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/acks.py`](starter/acks.py)
- [`starter/alter.sh`](starter/alter.sh)
- [`starter/error-demo.py`](starter/error-demo.py): the listing from the lesson
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/setup.sh`](starter/setup.sh)
- [`starter/start.sh`](starter/start.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/error-demo.py` alongside the lesson.
2. On a machine that has what it needs, the lesson ran it with:

   ```sh
   bash setup.sh >/dev/null 2>&1
   docker run --rm --network m02l03-net -v "$PWD:/app" m02l03-client python error-demo.py
   ```

## How to check

**Read along.** It is a listing to read alongside the lesson, not a program to run.

There is nothing to check: `./check m02l03-06` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m02l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
