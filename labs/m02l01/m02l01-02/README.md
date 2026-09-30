# m02l01-02 · Start the broker and create the topic

**Lesson:** [A Producer In Python](https://learnsome.tech/learn/kafka-course/m02l01) (lesson 2.1, module 2: Producers: Keys, Batches And Acks) · Pro  
**Check:** Read along

## Goal

You can write a KafkaProducer that sends records to a topic, block on the returned future, and read the partition and offset from the metadata the broker returns.

In the lesson: The startup script does four things in sequence. First it creates a dedicated network so the client container can reach the broker by hostname rather than by IP address. Then it starts Redpanda in single-node development mode with one CPU shard and five hundred and twelve megabytes of memory; this configuration boots in about three seconds. The script pauses for six seconds to let the broker finish its internal leadership election before any client tries to connect. Finally it creates the topic that the producer will write to. You see two identifiers - one for the network and one for the container - followed by a confirmation that the topic was created successfully. These identifiers are masked in the transcript because they change on every run, but everything else is stable text you can compare against.

## Files

- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/start.sh`](starter/start.sh): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/start.sh` alongside the lesson.
2. On a machine that has what it needs, the lesson ran it with:

   ```sh
   bash start.sh
   ```

## How to check

**Read along.** It needs Docker (or another container engine), which the lab sandbox does not have. Run it on a machine with Docker installed.

There is nothing to check: `./check m02l01-02` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m02l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
