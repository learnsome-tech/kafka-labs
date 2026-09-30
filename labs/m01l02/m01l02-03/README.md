# m01l02-03 · Read cluster info and check health

**Lesson:** [Starting A Broker And Reading Its Metadata](https://learnsome.tech/learn/kafka-course/m01l02) (lesson 1.2, module 1: The Log: Topics, Partitions And Offsets) · Free  
**Check:** Read along

## Goal

You can start a Redpanda broker with the correct networking flags, read its cluster state with rpk cluster info and rpk cluster health, and explain why the advertised address must be the container name.

In the lesson: We wait for the broker to finish starting up, then run rpk cluster info. The cluster section shows the cluster name, which includes a UUID that changes every time the broker starts fresh; we elide that line rather than pinning a value that will not match on the next run. The brokers section is what matters: broker ID zero is the current controller, marked with an asterisk, and it is reachable at the address we advertised on the standard Kafka protocol port. Next we run rpk cluster health, which asks the broker to assess its own operational state. It reports whether the cluster is healthy, the controller ID, which nodes are listed, which are down, and whether any partitions are missing a leader or falling behind on replication. A single healthy broker shows no problems in any of those fields.

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
   B=m01l02-broker
   sleep 6
   docker exec $B rpk cluster info
   docker exec $B rpk cluster health
   ```

## How to check

**Read along.** It needs Docker (or another container engine), which the lab sandbox does not have. Run it on a machine with Docker installed.

There is nothing to check: `./check m01l02-03` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m01l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
