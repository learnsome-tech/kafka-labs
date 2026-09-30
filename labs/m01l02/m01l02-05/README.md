# m01l02-05 · List topics on the broker

**Lesson:** [Starting A Broker And Reading Its Metadata](https://learnsome.tech/learn/kafka-course/m01l02) (lesson 1.2, module 1: The Log: Topics, Partitions And Offsets) · Free  
**Check:** Read along

## Goal

You can start a Redpanda broker with the correct networking flags, read its cluster state with rpk cluster info and rpk cluster health, and explain why the advertised address must be the container name.

In the lesson: The last metadata command for this lesson is rpk topic list. On a fresh broker with no user topics created yet, the list comes back empty or shows only internal system topics that Redpanda uses for its own operation. We use an elision to skip those internal rows and focus on the absence of any user topics, which confirms the broker started cleanly. In later lessons this command becomes a quick sanity check: create a topic, list confirms it is there, clean up, list confirms the broker is empty again. Knowing what the clean state looks like makes it straightforward to spot when something unexpected has been left behind.

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
   docker exec $B rpk topic list
   ```

## How to check

**Read along.** It needs Docker (or another container engine), which the lab sandbox does not have. Run it on a machine with Docker installed.

There is nothing to check: `./check m01l02-05` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m01l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
