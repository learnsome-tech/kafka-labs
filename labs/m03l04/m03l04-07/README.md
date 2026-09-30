# m03l04-07 · Inspect the group and clean up

**Lesson:** [Rebalancing And Its Cost](https://learnsome.tech/learn/kafka-course/m03l04) (lesson 3.4, module 3: Consumers And Consumer Groups) · Pro  
**Check:** Read along

## Goal

You can explain what triggers a rebalance, configure session and heartbeat timeouts, and describe what happens to a consumer that exceeds max-poll-interval-milliseconds.

In the lesson: After the consumer exits, rpk group describe shows the workers group with committed offsets for all three partitions and lag zero. There are no active members in the output because the consumer closed cleanly. We then stop the broker and remove the network.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/consumer.py`](starter/consumer.py)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`starter/setup.sh`](starter/setup.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/session.sh` alongside the lesson.
2. On a machine that has what it needs, the lesson ran it with:

   ```sh
   bash setup.sh >/dev/null 2>&1
   docker exec m03l04-broker rpk group describe m03l04-workers
   docker rm -f m03l04-broker
   docker network rm m03l04-net
   ```

## How to check

**Read along.** It needs Docker (or another container engine), which the lab sandbox does not have. Run it on a machine with Docker installed.

There is nothing to check: `./check m03l04-07` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m03l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
