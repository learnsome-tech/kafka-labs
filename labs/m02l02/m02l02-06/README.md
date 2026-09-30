# m02l02-06 · Read records by partition, then clean up

**Lesson:** [Keys And Ordering Per Partition](https://learnsome.tech/learn/kafka-course/m02l02) (lesson 2.2, module 2: Producers: Keys, Batches And Acks) · Pro  
**Check:** Read along

## Goal

You can produce records with keys, explain why the same key always lands in the same partition, and show that ordering is guaranteed within a partition but not across partitions.

In the lesson: The format string here prints partition, offset, key, and value for each record. The consumer reads partition zero first, delivering the three order-one records in insertion order: v-zero, then v-two, then v-four. Then it reads partition one and delivers the three order-two records in their insertion order: v-one, then v-three, then v-five. The values reveal the original interleaving: v-zero came before v-one at the application level, yet v-zero and v-one are at the same offset position in their respective partitions. Ordering across partitions is not meaningful; ordering within a partition is exact and permanent. The script finishes by removing the broker and the network so the daemon is left in a clean state.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/consume.sh`](starter/consume.sh): the listing from the lesson
- [`starter/producer.py`](starter/producer.py)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/setup.sh`](starter/setup.sh)
- [`starter/start.sh`](starter/start.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/consume.sh` alongside the lesson.
2. On a machine that has what it needs, the lesson ran it with:

   ```sh
   bash setup.sh >/dev/null 2>&1
   bash consume.sh
   ```

## How to check

**Read along.** It needs Docker (or another container engine), which the lab sandbox does not have. Run it on a machine with Docker installed.

There is nothing to check: `./check m02l02-06` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m02l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
