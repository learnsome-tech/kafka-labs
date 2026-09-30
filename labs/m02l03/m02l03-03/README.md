# m02l03-03 · Demonstrate all three ack levels

**Lesson:** [Acknowledgements: What Acks Means For Durability](https://learnsome.tech/learn/kafka-course/m02l03) (lesson 2.3, module 2: Producers: Keys, Batches And Acks) · Pro  
**Check:** Read along

## Goal

You can set acks on a KafkaProducer to zero, one, or all, explain what each level waits for, and describe what min-insync-replicas does when a write requires confirmation from more replicas than are currently available.

In the lesson: The program creates three separate producer instances, each with a different acks value, and sends to three different topics so there is no interference between them. The first producer uses acks zero. It calls send, then flush to push the bytes onto the network, then prints a message without calling get, because with acks zero there is nothing to wait for. The second producer uses acks one. It calls get on the returned future and receives the partition and offset once the leader has confirmed the write. The third producer uses acks equal to the string all. It also blocks on get and receives the same metadata, but this time the future resolves only after the full in-sync replica set has written the record. On a single-node cluster the in-sync set has exactly one member, so acks all behaves identically to acks one here.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/acks.py`](starter/acks.py): the listing from the lesson
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/setup.sh`](starter/setup.sh)
- [`starter/start.sh`](starter/start.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/acks.py` alongside the lesson.
2. On a machine that has what it needs, the lesson ran it with:

   ```sh
   bash setup.sh >/dev/null 2>&1
   docker build -q -t m02l03-client .
   ```

## How to check

**Read along.** It needs Docker (or another container engine), which the lab sandbox does not have. Run it on a machine with Docker installed.

There is nothing to check: `./check m02l03-03` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m02l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
