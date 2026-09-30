# m07l01 · Three Brokers: Replication And Leaders

Module 7: Operating A Cluster · lesson 7.1 · Pro · [Open the lesson](https://learnsome.tech/learn/kafka-course/m07l01)

**Goal:** You can start a three-node Redpanda cluster, create a topic with replication factor three, and read the leader and replica assignments from the partition table.

## Labs

| Lab | What it is | Check |
| --- | --- | --- |
| [m07l01-02](m07l01-02/) | Start a three-node cluster | Read along |
| [m07l01-03](m07l01-03/) | Inspect the cluster and create a replicated topic | Read along |
| [m07l01-05](m07l01-05/) | Remove the cluster | Read along |

## Exercises

Open exercises from the lesson, to try on your own. They have no answer files: work them out, and use the labs above as reference.

### Practice: build and inspect a replicated cluster

1. Start a three-broker cluster on a new network, naming the brokers m07l01-practice-b1 through b3.
2. Create a topic with two partitions and replication factor three, then describe its partitions.
3. Note which brokers end up with no partition to lead, then remove all containers and the network.

> **Hint:** The script pattern uses a for loop over one two three with a one-second sleep between each docker run call. After the loop, sleep seven seconds before running rpk commands.

## Check yourself

- What does the replication factor of a topic control?
- Why does each partition have exactly one leader at a time?
- What does the leader epoch number tell you about a partition?
- What happens to clients that cached a stale leader address when that leader fails?

---

[Course README](../../README.md) · [Apache Kafka & Event Streaming on LearnSome.tech](https://learnsome.tech/courses/kafka-course)
