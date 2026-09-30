# m01l05-03 · Create a topic and produce some records

**Lesson:** [Retention: Time, Size And Why Data Stays](https://learnsome.tech/learn/kafka-course/m01l05) (lesson 1.5, module 1: The Log: Topics, Partitions And Offsets) · Free  
**Check:** Read along

## Goal

You can set time-based and size-based retention on a topic with rpk topic alter-config, verify the settings with rpk topic describe -c, and explain why retention deletes at segment boundaries rather than individual records.

In the lesson: We wait for the broker to finish starting up, then create a topic. This lesson focuses on retention configuration rather than record content, so we produce three records as placeholder data. The topic name follows the lesson-prefixed convention. Three records are enough to have something in the log while we experiment with retention settings, and their content does not matter for this lesson because we are not consuming them. The commands that follow will configure how long these records stay in the log and how much disk space the topic may occupy, both of which are independent of whether anything has been consumed. Retention acts on the log itself, not on what consumers have read.

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
   sleep 6
   docker exec $B rpk topic create $T
   echo record-one | docker exec -i $B rpk topic produce $T
   echo record-two | docker exec -i $B rpk topic produce $T
   echo record-three | docker exec -i $B rpk topic produce $T
   ```

## How to check

**Read along.** It needs Docker (or another container engine), which the lab sandbox does not have. Run it on a machine with Docker installed.

There is nothing to check: `./check m01l05-03` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m01l05) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
