# m01l03-04 · Consume the keyed records

**Lesson:** [Topics, Partitions And Where A Record Lands](https://learnsome.tech/learn/kafka-course/m01l03) (lesson 1.3, module 1: The Log: Topics, Partitions And Offsets) · Free  
**Check:** Read along

## Goal

You can create a topic with multiple partitions, produce keyed records and confirm they always land on the same partition, and explain why unkeyed records do not carry ordering guarantees.

In the lesson: Here is the consume output for the three records we just produced. The format string prints the key and value for each record, without offset or partition information. All three records show the key k-one, and they appear in the order a, b, c, which is the order they were produced. This ordering is guaranteed because all three records went to the same partition: records within a single partition have a strict order determined by offset. If records had gone to different partitions, we could not make any claim about their relative order across partitions. This is the fundamental trade-off: keys give you ordering guarantees within a partition but constrain all records with the same key to one partition's throughput.

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
   docker exec $B rpk topic consume $T -f '%k %v
   ' -o 0 --num 3
   ```

## How to check

**Read along.** It needs Docker (or another container engine), which the lab sandbox does not have. Run it on a machine with Docker installed.

There is nothing to check: `./check m01l03-04` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m01l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
