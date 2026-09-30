# m07l03-03 · Stop one broker and confirm the topic stays up

**Lesson:** [Losing A Broker](https://learnsome.tech/learn/kafka-course/m07l03) (lesson 7.3, module 7: Operating A Cluster) · Pro  
**Check:** Read along

## Goal

You can stop a broker, confirm a new leader is elected and the topic stays available, restart the broker and verify it rejoins, and explain why two broker failures block acks-all writes.

In the lesson: Stop broker three; the container name echoes back as confirmation. Sleep ten seconds for the Raft election to settle, then store the exec prefix. Describe the topic partitions: the EPOCH column shows a higher number for any partition that moved to a new leader. The REPLICAS column still lists all three broker identifiers, reflecting the configured set rather than which brokers are alive. Produce a record to the topic: it still works because two brokers remain in the ISR, satisfying the minimum. The consumer reads the record back; the timeout wrapper only guards against a learner waiting forever if the write had failed. The cluster continues serving both reads and writes after losing one broker.

## Files

- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`starter/setup.sh`](starter/setup.sh)
- [`starter/start-m07l03.sh`](starter/start-m07l03.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/session.sh` alongside the lesson.
2. On a machine that has what it needs, the lesson ran it with:

   ```sh
   bash setup.sh >/dev/null 2>&1
   docker stop m07l03-b3
   sleep 10
   B="docker exec -i m07l03-b1"
   $B rpk topic describe m07l03-orders -p
   echo k1:v1 | $B rpk topic produce m07l03-orders -f '%k:%v\n'
   $B timeout 30 rpk topic consume m07l03-orders -n1 -f '%k %v\n'
   ```

## How to check

**Read along.** It needs Docker (or another container engine), which the lab sandbox does not have. Run it on a machine with Docker installed.

There is nothing to check: `./check m07l03-03` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m07l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
