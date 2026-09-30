# m03l04-03 · Create a three-partition topic and produce three records

**Lesson:** [Rebalancing And Its Cost](https://learnsome.tech/learn/kafka-course/m03l04) (lesson 3.4, module 3: Consumers And Consumer Groups) · Pro  
**Check:** Read along

## Goal

You can explain what triggers a rebalance, configure session and heartbeat timeouts, and describe what happens to a consumer that exceeds max-poll-interval-milliseconds.

In the lesson: We create a three-partition topic and place one record in each partition using the explicit partition flag. Having a record in every partition means the assignment output will show all three partitions claimed by a single consumer, which makes the rebalance concept concrete when we describe what would happen if a second consumer joined.

## Files

- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`starter/setup.sh`](starter/setup.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/session.sh` alongside the lesson.
2. On a machine that has what it needs, the lesson ran it with:

   ```sh
   bash setup.sh >/dev/null 2>&1
   B=m03l04-broker ; T=m03l04-events
   docker exec $B rpk topic create m03l04-events --partitions 3
   echo a | docker exec -i $B rpk topic produce $T --partition 0
   echo b | docker exec -i $B rpk topic produce $T --partition 1
   echo c | docker exec -i $B rpk topic produce $T --partition 2
   ```

## How to check

**Read along.** It needs Docker (or another container engine), which the lab sandbox does not have. Run it on a machine with Docker installed.

There is nothing to check: `./check m03l04-03` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m03l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
