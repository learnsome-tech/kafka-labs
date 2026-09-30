# m01l05-04 · Set time-based retention and inspect the config

**Lesson:** [Retention: Time, Size And Why Data Stays](https://learnsome.tech/learn/kafka-course/m01l05) (lesson 1.5, module 1: The Log: Topics, Partitions And Offsets) · Free  
**Check:** Read along

## Goal

You can set time-based and size-based retention on a topic with rpk topic alter-config, verify the settings with rpk topic describe -c, and explain why retention deletes at segment boundaries rather than individual records.

In the lesson: We set the retention time to three million six hundred thousand milliseconds, which is one hour. The rpk topic alter-config command takes the setting as a key-equals-value string. After the command succeeds, we run rpk topic describe with the config flag, which shows the topic's active configuration rather than its partition layout. We use elisions in the output to skip the many config keys we are not focusing on and show only the retention period line. The value three million six hundred thousand confirms the setting took effect. Retention time is a minimum, not a maximum: Kafka checks for expired data only at segment boundaries, which the next concept segment explains. Setting a one-hour retention does not guarantee records disappear exactly one hour after being written.

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
   CFG=retention.ms=3600000
   docker exec $B rpk topic alter-config $T -s $CFG
   docker exec $B rpk topic describe -c $T
   ```

## How to check

**Read along.** It needs Docker (or another container engine), which the lab sandbox does not have. Run it on a machine with Docker installed.

There is nothing to check: `./check m01l05-04` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m01l05) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
