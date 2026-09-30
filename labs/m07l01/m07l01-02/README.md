# m07l01-02 · Start a three-node cluster

**Lesson:** [Three Brokers: Replication And Leaders](https://learnsome.tech/learn/kafka-course/m07l01) (lesson 7.1, module 7: Operating A Cluster) · Pro  
**Check:** Read along

## Goal

You can start a three-node Redpanda cluster, create a topic with replication factor three, and read the leader and replica assignments from the partition table.

In the lesson: The startup script creates one network then starts three brokers in sequence, pausing between each so Docker registers the hostname before the next container tries to resolve it. Each broker advertises its own hostname for both the Kafka listener and the internal RPC channel. The seeds list gives all three hostnames so every broker knows where to look for peers. After the brokers start, the script waits another seven seconds for Raft leader election to finish and the cluster to accept client connections. The four masked identifiers printed are the network and the three containers. None of those identifiers matter to us; what matters is that all three processes are running and forming a consensus.

## Files

- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/start-m07l01.sh`](starter/start-m07l01.sh): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/start-m07l01.sh` alongside the lesson.
2. On a machine that has what it needs, the lesson ran it with:

   ```sh
   bash start-m07l01.sh
   ```

## How to check

**Read along.** It needs Docker (or another container engine), which the lab sandbox does not have. Run it on a machine with Docker installed.

There is nothing to check: `./check m07l01-02` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m07l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
