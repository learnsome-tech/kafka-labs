# m07l01-02 · Start a three-node cluster

**Lesson:** [Three Brokers: Replication And Leaders](https://learnsome.tech/learn/kafka-course/m07l01) (lesson 7.1, module 7: Operating A Cluster) · Pro  
**Check:** Checker

## Goal

You can start a three-node Redpanda cluster, create a topic with replication factor three, and read the leader and replica assignments from the partition table.

In the lesson: The startup script creates one network then starts three brokers in sequence, pausing between each so Docker registers the hostname before the next container tries to resolve it. Each broker advertises its own hostname for both the Kafka listener and the internal RPC channel. The seeds list gives all three hostnames so every broker knows where to look for peers. After the brokers start, the script waits another seven seconds for Raft leader election to finish and the cluster to accept client connections. The four masked identifiers printed are the network and the three containers. None of those identifiers matter to us; what matters is that all three processes are running and forming a consensus.

## Files

- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/start-m07l01.sh`](starter/start-m07l01.sh): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m07l01/m07l01-02/starter`
2. Read `start-m07l01.sh`.
3. Edit `start-m07l01.sh` and check it: `bash -n start-m07l01.sh`.
4. Check it from the repository root: `./check m07l01-02`.

## How to check

`./check m07l01-02` copies `starter/` into a scratch directory and runs `bash -n start-m07l01.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the shell script parses (`bash -n`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m07l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
