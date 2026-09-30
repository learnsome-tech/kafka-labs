# m03l03-03 · Create the topic and produce four records

**Lesson:** [Committing Offsets: Auto, Manual And Lag](https://learnsome.tech/learn/kafka-course/m03l03) (lesson 3.3, module 3: Consumers And Consumer Groups) · Pro  
**Check:** Read along

## Goal

You can configure a KafkaConsumer to commit offsets manually, observe the lag a consumer group carries before committing, and confirm that a second run resumes from the committed position.

In the lesson: We produce four records with the same key, which guarantees they all land on partition zero in insertion order. Using the same key means the hash-based partitioner directs all four records to partition zero, so the ordering is insertion order exactly: w comes first, then x, y, and z. Four records gives us a small but clear lag number to watch change when we commit. The produce output carries timestamps that are not masked, so we elide those lines and read the results through the Python consumer.

## Files

- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`starter/setup.sh`](starter/setup.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/session.sh` alongside the lesson.
2. On a machine that has what it needs, the lesson ran it with:

   ```sh
   bash setup.sh >/dev/null 2>&1
   B=m03l03-broker ; T=m03l03-events
   docker exec m03l03-broker rpk topic create m03l03-events
   echo w | docker exec -i $B rpk topic produce $T --key k1
   echo x | docker exec -i $B rpk topic produce $T --key k1
   echo y | docker exec -i $B rpk topic produce $T --key k1
   echo z | docker exec -i $B rpk topic produce $T --key k1
   ```

## How to check

**Read along.** It needs Docker (or another container engine), which the lab sandbox does not have. Run it on a machine with Docker installed.

There is nothing to check: `./check m03l03-03` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m03l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
