# m03l02 · Consumer Groups And Partition Assignment

Module 3: Consumers And Consumer Groups · lesson 3.2 · Pro · [Open the lesson](https://learnsome.tech/learn/kafka-course/m03l02)

**Goal:** You can explain how Kafka assigns partitions across a consumer group, run a consumer that reports its assignment, and read rpk group describe to verify committed offsets per partition.

## Labs

| Lab | What it is | Check |
| --- | --- | --- |
| [m03l02-02](m03l02-02/) | Start the broker and network | Read along |
| [m03l02-03](m03l02-03/) | Create a three-partition topic and produce six records | Read along |
| [m03l02-04](m03l02-04/) | Write the consumer with assignment reporting | Read along |
| [m03l02-05](m03l02-05/) | Run the consumer and observe partition assignment | Read along |
| [m03l02-07](m03l02-07/) | Inspect the group and clean up | Read along |

## Exercises

Open exercises from the lesson, to try on your own. They have no answer files: work them out, and use the labs above as reference.

### Try it yourself

1. Create a four-partition topic with two records per partition and confirm all are assigned.
2. Run a second consumer in the same group and observe how the partitions divide.
3. Run rpk group describe after both exit and compare current-offset per partition.

> **Hint:** With four partitions and two consumers, each consumer typically gets two partitions under the default range assignment strategy. The partition split is visible both in the on-assign output and in rpk group describe.

## Check yourself

- If a topic has three partitions and a consumer group has four consumers, how many consumers will be idle?
- What triggers a rebalance in a consumer group?
- When does the on-assign callback fire relative to the first records being returned by poll?
- What does rpk group describe show for a partition after the consumer exits?
- Why does sorting records by partition and offset in the consumer make the output deterministic?

---

[Course README](../../README.md) · [Apache Kafka & Event Streaming on LearnSome.tech](https://learnsome.tech/courses/kafka-course)
