# m07l04 · Watching Lag And Sizing Partitions

Module 7: Operating A Cluster · lesson 7.4 · Pro · [Open the lesson](https://learnsome.tech/learn/kafka-course/m07l04)

**Goal:** You can measure consumer group lag with rpk group describe, add partitions to an existing topic, and explain why partition count is a ceiling on consumer-side parallelism.

## Labs

| Lab | What it is | Check |
| --- | --- | --- |
| [m07l04-02](m07l04-02/) | Start a cluster with a three-partition topic | Checker |
| [m07l04-03](m07l04-03/) | Produce five records ahead of the consumer | Checker |
| [m07l04-04](m07l04-04/) | Consume two records and commit the group offset | Checker |
| [m07l04-05](m07l04-05/) | Measure lag and add partitions | Checker |
| [m07l04-07](m07l04-07/) | Remove the cluster | Checker |

## Exercises

Open exercises from the lesson, to try on your own. They have no answer files: work them out, and use the labs above as reference.

### Practice: produce ahead and measure the gap

1. Produce ten records to partition zero, then consume four with a consumer group and commit.
2. Run rpk group describe and confirm the reported total lag matches the number of unread records.
3. Add two partitions to the topic, then explain why records already written are not redistributed.

> **Hint:** Explicit partition assignment in the producer keeps the output deterministic; use enable-auto-commit False and an explicit commit in the consumer so the offset is saved before the program exits.

## Check yourself

- What does a total consumer lag of zero mean for a consumer group?
- Why is partition count a ceiling rather than a guarantee of consumer parallelism?
- What happens to records already written when you add partitions to an existing topic?
- Why does adding partitions break ordering for records with the same key?

---

[Course README](../../README.md) · [Apache Kafka & Event Streaming on LearnSome.tech](https://learnsome.tech/courses/kafka-course)
