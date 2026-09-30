# m07l05-03 · Print a decision table from a rule dictionary

**Lesson:** [When Kafka Is The Wrong Tool](https://learnsome.tech/learn/kafka-course/m07l05) (lesson 7.5, module 7: Operating A Cluster) · Pro  
**Check:** Read along

## Goal

You can list three scenarios where a message queue, a database table, or direct RPC is a better fit than Kafka, and explain the operational cost of running a broker cluster.

In the lesson: The decision program builds a simple table from a list of pairs: scenario on the left, recommended tool on the right. The column width is computed from the longest label so the table aligns each scenario with its better fit. Request-reply is the clearest mismatch with Kafka: a caller waiting for one answer should use a direct call, not a topic. A task that must run exactly once per message belongs in a queue that gives per-message acknowledgement, like RabbitMQ or SQS. Shared mutable state belongs in a database. Audit logs, fan-out, and ordered streams per entity are where Kafka shines.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/decide.py`](starter/decide.py): the listing from the lesson
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/setup.sh`](starter/setup.sh)
- [`starter/show-cost.sh`](starter/show-cost.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/decide.py` alongside the lesson.
2. On a machine that has what it needs, the lesson ran it with:

   ```sh
   bash setup.sh >/dev/null 2>&1
   docker build -q -t m07l05-c . && docker run --rm --network m07l05-net m07l05-c python decide.py
   ```

## How to check

**Read along.** It needs Docker (or another container engine), which the lab sandbox does not have. Run it on a machine with Docker installed.

There is nothing to check: `./check m07l05-03` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m07l05) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
