# m01l05-05 · Set size-based retention and inspect the config

**Lesson:** [Retention: Time, Size And Why Data Stays](https://learnsome.tech/learn/kafka-course/m01l05) (lesson 1.5, module 1: The Log: Topics, Partitions And Offsets) · Free  
**Check:** Read along

## Goal

You can set time-based and size-based retention on a topic with rpk topic alter-config, verify the settings with rpk topic describe -c, and explain why retention deletes at segment boundaries rather than individual records.

In the lesson: Now we set a size ceiling for the topic. Retention bytes controls the maximum total size of the partition's log segments on disk. We set it to one million bytes, roughly one megabyte, which is a very tight ceiling for a demo. After the alter-config command applies the change, we describe the topic again with the config flag to confirm the new setting is present alongside the time-based retention we set in the previous segment. You can see from the output that retention bytes is now one million. The two retention settings work independently and either can trigger cleanup: if the partition exceeds one million bytes the broker will delete old segments regardless of their age.

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
   B=m01l05-broker
   T=m01l05-events
   CFG=retention.bytes=1000000
   docker exec $B rpk topic alter-config $T -s $CFG
   docker exec $B rpk topic describe -c $T
   ```

## How to check

**Read along.** It needs Docker (or another container engine), which the lab sandbox does not have. Run it on a machine with Docker installed.

There is nothing to check: `./check m01l05-05` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m01l05) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
