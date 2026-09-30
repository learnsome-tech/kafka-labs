# m01l03-03 · Create a three-partition topic and produce keyed records

**Lesson:** [Topics, Partitions And Where A Record Lands](https://learnsome.tech/learn/kafka-course/m01l03) (lesson 1.3, module 1: The Log: Topics, Partitions And Offsets) · Free  
**Check:** Read along

## Goal

You can create a topic with multiple partitions, produce keyed records and confirm they always land on the same partition, and explain why unkeyed records do not carry ordering guarantees.

In the lesson: We wait for the broker to start up, then create a topic with three partitions. Three gives us a meaningful distribution without making the example overly complex. We prefix the topic name with this lesson's identifier as always. Then we produce three records, each carrying the same key, k-one. The key flag on rpk topic produce sets a static key for every record produced through that invocation. We call it three times in separate invocations, each passing k-one, to demonstrate that the partitioner evaluates the key independently on every write and always arrives at the same destination. The values are a, b and c: short enough to verify in the consume output while making it clear which record is which.

## Files

- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`starter/setup.sh`](starter/setup.sh)
- [`starter/start.sh`](starter/start.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/session.sh` alongside the lesson.
2. On a machine that has what it needs, the lesson ran it with:

   ```sh
   bash setup.sh >/dev/null 2>&1
   B=m01l03-broker
   T=m01l03-orders
   sleep 6
   docker exec $B rpk topic create $T -p 3
   echo a | docker exec -i $B rpk topic produce $T -k k1
   echo b | docker exec -i $B rpk topic produce $T -k k1
   echo c | docker exec -i $B rpk topic produce $T -k k1
   ```

## How to check

**Read along.** It needs Docker (or another container engine), which the lab sandbox does not have. Run it on a machine with Docker installed.

There is nothing to check: `./check m01l03-03` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m01l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
