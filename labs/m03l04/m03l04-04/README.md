# m03l04-04 · Write the consumer with session and heartbeat settings

**Lesson:** [Rebalancing And Its Cost](https://learnsome.tech/learn/kafka-course/m03l04) (lesson 3.4, module 3: Consumers And Consumer Groups) · Pro  
**Check:** Read along

## Goal

You can explain what triggers a rebalance, configure session and heartbeat timeouts, and describe what happens to a consumer that exceeds max-poll-interval-milliseconds.

In the lesson: The consumer registers a rebalance listener so that each rebalance event prints which partitions were received. Three timing parameters appear explicitly. The session-timeout-milliseconds tells the broker how long to wait without a heartbeat before declaring this consumer dead; we use fifteen thousand milliseconds. The heartbeat-interval-milliseconds controls how often the keep-alive signal is sent; five thousand milliseconds gives three heartbeats within each session window. The max-poll-interval-milliseconds sets the ceiling on time between poll calls; if the processing loop takes more than thirty seconds between polls, the broker ejects the consumer from the group regardless of heartbeat state.

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
   docker build -q -t m03l04-client . >/dev/null
   ```

## How to check

**Read along.** It needs Docker (or another container engine), which the lab sandbox does not have. Run it on a machine with Docker installed.

There is nothing to check: `./check m03l04-04` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m03l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
