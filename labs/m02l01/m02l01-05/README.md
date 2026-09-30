# m02l01-05 · Confirm delivery with rpk, then clean up

**Lesson:** [A Producer In Python](https://learnsome.tech/learn/kafka-course/m02l01) (lesson 2.1, module 2: Producers: Keys, Batches And Acks) · Pro  
**Check:** Read along

## Goal

You can write a KafkaProducer that sends records to a topic, block on the returned future, and read the partition and offset from the metadata the broker returns.

In the lesson: Reading the topic with rpk confirms that the broker stored exactly what the producer sent. The format string tells rpk to print only the value of each record, which keeps timestamps out of the output and makes the result stable across repeated runs. The ten values appear in the same order they were written - record-zero through record-nine - because a single partition preserves insertion order for every record it holds. After confirming the records arrived intact, the session removes the broker container and the network. Everything the lesson created disappears, leaving the shared Docker daemon in the same state it was in before the lesson started.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/producer.py`](starter/producer.py)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`starter/setup.sh`](starter/setup.sh)
- [`starter/start.sh`](starter/start.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/session.sh` alongside the lesson.
2. On a machine that has what it needs, the lesson ran it with:

   ```sh
   bash setup.sh >/dev/null 2>&1
   B=m02l01-broker
   docker exec $B rpk topic consume m02l01-ev -f '%v\n' --num 10
   docker rm -f m02l01-broker
   docker network rm m02l01-net
   ```

## How to check

**Read along.** It needs Docker (or another container engine), which the lab sandbox does not have. Run it on a machine with Docker installed.

There is nothing to check: `./check m02l01-05` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m02l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
