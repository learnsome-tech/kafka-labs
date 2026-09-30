# m07l02-06 · Describe partitions and clean up

**Lesson:** [In-Sync Replicas And Minimum ISR](https://learnsome.tech/learn/kafka-course/m07l02) (lesson 7.2, module 7: Operating A Cluster) · Pro  
**Check:** Read along

## Goal

You can read the in-sync replica set for a topic, set the minimum in-sync replica count, and explain why that number gates whether acks-all writes succeed.

In the lesson: Store the prefix, then describe the topic's partitions. The REPLICAS column confirms three copies per partition; the ISR is not shown by this command but was visible through the admin client earlier. The data rows are elided because leaders vary by election, but the structure is stable. Then remove the three broker containers and the network to leave the daemon clean. In the next lesson you will take one of these brokers offline deliberately and watch the ISR shrink, leader election happen, and the cluster continue serving with the remaining two members.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/isr.py`](starter/isr.py)
- [`starter/prod.py`](starter/prod.py)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`starter/setup.sh`](starter/setup.sh)
- [`starter/start-m07l02.sh`](starter/start-m07l02.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/session.sh` alongside the lesson.
2. On a machine that has what it needs, the lesson ran it with:

   ```sh
   bash setup.sh >/dev/null 2>&1
   B="docker exec m07l02-b1"
   $B rpk topic describe m07l02-events -p
   docker rm -f m07l02-b1 m07l02-b2 m07l02-b3
   docker network rm m07l02-net
   ```

## How to check

**Read along.** It needs Docker (or another container engine), which the lab sandbox does not have. Run it on a machine with Docker installed.

There is nothing to check: `./check m07l02-06` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m07l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
