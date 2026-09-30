# m07l05-02 · Show the cost of running three broker containers

**Lesson:** [When Kafka Is The Wrong Tool](https://learnsome.tech/learn/kafka-course/m07l05) (lesson 7.5, module 7: Operating A Cluster) · Pro  
**Check:** Read along

## Goal

You can list three scenarios where a message queue, a database table, or direct RPC is a better fit than Kafka, and explain the operational cost of running a broker cluster.

In the lesson: The startup script is the same three-broker cluster pattern, but here the goal is not to demonstrate a feature. It is to demonstrate a cost. Four container identifiers appear: one network and three brokers. Each of those three brokers reserves five hundred and twelve megabytes of memory and consumes AIO capacity from the kernel. At this scale it feels lightweight, but in production each broker is a dedicated machine or a large virtual machine with hundreds of gigabytes of fast attached storage. Three of them, plus the people and tooling to keep them running, is the minimum viable cluster.

## Files

- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/show-cost.sh`](starter/show-cost.sh): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/show-cost.sh` alongside the lesson.
2. On a machine that has what it needs, the lesson ran it with:

   ```sh
   bash show-cost.sh
   ```

## How to check

**Read along.** It needs Docker (or another container engine), which the lab sandbox does not have. Run it on a machine with Docker installed.

There is nothing to check: `./check m07l05-02` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m07l05) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
