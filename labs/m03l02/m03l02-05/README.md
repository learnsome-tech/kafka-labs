# m03l02-05 · Run the consumer and observe partition assignment

**Lesson:** [Consumer Groups And Partition Assignment](https://learnsome.tech/learn/kafka-course/m03l02) (lesson 3.2, module 3: Consumers And Consumer Groups) · Pro  
**Check:** Read along

## Goal

You can explain how Kafka assigns partitions across a consumer group, run a consumer that reports its assignment, and read rpk group describe to verify committed offsets per partition.

In the lesson: The consumer is the only member of the billing group, so the broker assigns all three partitions to it during the first rebalance. The listener runs and prints the assignment in order. Then the for loop reads all six records across the three partitions, sorts them by partition and offset, and prints them. Partition zero holds values a and b at offsets zero and one. Partition one holds c and d. Partition two holds e and f. The consumer-timeout fires after three seconds of quiet, the loop ends, and the consumer commits its position and closes. If a second consumer had joined the same group while this one was running, a new rebalance would have fired, the listener would have printed a smaller assignment, and each consumer would have handled only its share of the partitions.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/consumer.py`](starter/consumer.py): the listing from the lesson
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/setup.sh`](starter/setup.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/consumer.py` alongside the lesson.
2. On a machine that has what it needs, the lesson ran it with:

   ```sh
   bash setup.sh >/dev/null 2>&1
   docker run --rm --network m03l02-net -v $PWD:/app m03l02-client python consumer.py
   ```

## How to check

**Read along.** It needs Docker (or another container engine), which the lab sandbox does not have. Run it on a machine with Docker installed.

There is nothing to check: `./check m03l02-05` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m03l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
