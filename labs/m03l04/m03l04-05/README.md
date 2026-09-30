# m03l04-05 · Run the consumer and observe the rebalance

**Lesson:** [Rebalancing And Its Cost](https://learnsome.tech/learn/kafka-course/m03l04) (lesson 3.4, module 3: Consumers And Consumer Groups) · Pro  
**Check:** Read along

## Goal

You can explain what triggers a rebalance, configure session and heartbeat timeouts, and describe what happens to a consumer that exceeds max-poll-interval-milliseconds.

In the lesson: The consumer joins the workers group and the first rebalance assigns all three partitions to it, since it is the only member. The listener runs and prints each partition received in ascending order. After the listener runs, the for loop reads one record from each partition, sorts them, and prints the results: a from partition zero, b from partition one, c from partition two. The consumer-timeout fires after four seconds of silence and the sorted records appear. Adding a second consumer to the same group while this one was running would trigger a second rebalance, run the listener again with a smaller assignment, and divide the partitions between the two members.

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
   docker run --rm --network m03l04-net -v $PWD:/app m03l04-client python consumer.py
   ```

## How to check

**Read along.** It needs Docker (or another container engine), which the lab sandbox does not have. Run it on a machine with Docker installed.

There is nothing to check: `./check m03l04-05` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m03l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
