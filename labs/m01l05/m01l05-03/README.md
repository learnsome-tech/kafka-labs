# m01l05-03 · Create a topic and produce some records

**Lesson:** [Retention: Time, Size And Why Data Stays](https://learnsome.tech/learn/kafka-course/m01l05) (lesson 1.5, module 1: The Log: Topics, Partitions And Offsets) · Free  
**Check:** Checker

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

1. Go to the starter: `cd labs/m01l05/m01l05-03/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   B=m01l05-broker
   T=m01l05-events
   sleep 6
   docker exec $B rpk topic create $T
   echo record-one | docker exec -i $B rpk topic produce $T
   echo record-two | docker exec -i $B rpk topic produce $T
   echo record-three | docker exec -i $B rpk topic produce $T
   ```
4. Edit `session.sh` and check it: `bash -n session.sh`.
5. Check it from the repository root: `./check m01l05-03`.

## How to check

`./check m01l05-03` copies `starter/` into a scratch directory and runs `bash -n session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the shell script parses (`bash -n`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m01l05) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
