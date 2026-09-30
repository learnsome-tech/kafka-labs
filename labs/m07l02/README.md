# m07l02 · In-Sync Replicas And Minimum ISR

Module 7: Operating A Cluster · lesson 7.2 · Pro · [Open the lesson](https://learnsome.tech/learn/kafka-course/m07l02)

**Goal:** You can read the in-sync replica set for a topic, set the minimum in-sync replica count, and explain why that number gates whether acks-all writes succeed.

## Labs

| Lab | What it is | Check |
| --- | --- | --- |
| [m07l02-02](m07l02-02/) | Start a cluster, create a topic, set minimum ISR | Checker |
| [m07l02-03](m07l02-03/) | Read the in-sync replica set from the admin API | Checker |
| [m07l02-05](m07l02-05/) | Confirm acks-all succeeds with a healthy ISR | Checker |
| [m07l02-06](m07l02-06/) | Describe partitions and clean up | Checker |

## Exercises

Open exercises from the lesson, to try on your own. They have no answer files: work them out, and use the labs above as reference.

### Practice: observe minimum ISR in action

1. Start a cluster with a topic of replication factor three and min.insync.replicas two.
2. Run the ISR program and confirm all three replicas appear in the in-sync set.
3. In one sentence, explain why acks-all still succeeds if one ISR member stops responding.

> **Hint:** The alter-config command sets topic-level overrides; the broker default for min.insync.replicas is typically one, so setting it to two on the topic is a stricter requirement than the broker default.

## Check yourself

- What does it mean for a replica to be in the in-sync set?
- When does a follower leave the in-sync replica set?
- What happens to an acks-all producer write when the ISR falls below min.insync.replicas?
- Why does the in-sync set re-expand automatically after a follower recovers?

---

[Course README](../../README.md) · [Apache Kafka & Event Streaming on LearnSome.tech](https://learnsome.tech/courses/kafka-course)
