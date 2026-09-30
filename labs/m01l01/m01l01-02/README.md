# m01l01-02 · Start a network and broker

**Lesson:** [Why A Log And Not A Queue](https://learnsome.tech/learn/kafka-course/m01l01) (lesson 1.1, module 1: The Log: Topics, Partitions And Offsets) · Free  
**Check:** Read along

## Goal

You can explain why Kafka uses an append-only log rather than a delete-on-read queue, produce records to a topic, and consume them independently from two separate sessions.

In the lesson: Every lesson in this module creates its own Docker network first, then starts a single Redpanda broker on that network. The network is how the broker and any clients we run later find each other by container name without needing IP addresses. We start Redpanda in dev container mode, which trades cluster features for a fast startup on a single processor core with half a gigabyte of memory. The overprovisioned flag tells Redpanda not to warn if those settings are lower than what the host offers. The advertise kafka addr setting is the critical networking parameter: when a Kafka client connects and asks the broker where to send data, the broker replies with this address. We set it to the container name so every container on the same network can reach it by that name. Two hex identifiers appear in the output panel: the first is the network and the second is the broker container.

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

There is nothing to check: `./check m01l01-02` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m01l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
