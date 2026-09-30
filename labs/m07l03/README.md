# m07l03 · Losing A Broker

Module 7: Operating A Cluster · lesson 7.3 · Pro · [Open the lesson](https://learnsome.tech/learn/kafka-course/m07l03)

**Goal:** You can stop a broker, confirm a new leader is elected and the topic stays available, restart the broker and verify it rejoins, and explain why two broker failures block acks-all writes.

## Labs

| Lab | What it is | Check |
| --- | --- | --- |
| [m07l03-02](m07l03-02/) | Start the cluster, topic, and minimum ISR setting | Read along |
| [m07l03-03](m07l03-03/) | Stop one broker and confirm the topic stays up | Read along |
| [m07l03-04](m07l03-04/) | Restart the stopped broker and verify rejoining | Read along |
| [m07l03-05](m07l03-05/) | Stop two brokers: acks-all producer is rejected | Read along |
| [m07l03-06](m07l03-06/) | Remove all containers and the network | Read along |

## Exercises

Open exercises from the lesson, to try on your own. They have no answer files: work them out, and use the labs above as reference.

### Practice: controlled broker failure and recovery

1. Start a three-broker cluster without auto-remove, with min.insync.replicas two on a topic.
2. Stop broker two, describe the partitions, and identify which partitions changed leaders.
3. Restart broker two with docker start and confirm it rejoins with the same broker identifier.

> **Hint:** The leader epoch increments whenever a partition elects a new leader, so comparing the epoch before and after a stop tells you which partitions were affected.

## Check yourself

- What is the difference in cluster behavior when a follower stops versus when a leader stops?
- Why should you use docker start instead of docker run to recover a stopped broker?
- How does the leader epoch column reveal which partitions changed leaders after a broker failure?
- Why does minimum ISR two block writes when only one broker remains, even though that broker is still running?

---

[Course README](../../README.md) · [Apache Kafka & Event Streaming on LearnSome.tech](https://learnsome.tech/courses/kafka-course)
