# m01l01-06 · Remove the broker and network

**Lesson:** [Why A Log And Not A Queue](https://learnsome.tech/learn/kafka-course/m01l01) (lesson 1.1, module 1: The Log: Topics, Partitions And Offsets) · Free  
**Check:** Read along

## Goal

You can explain why Kafka uses an append-only log rather than a delete-on-read queue, produce records to a topic, and consume them independently from two separate sessions.

In the lesson: Good practice in this course is to clean up the broker and network at the end of every lesson rather than relying on the verification tooling to do it. A container or network left behind will block the next run of the same lesson because the verifier checks for name collisions before it executes any commands. We remove the broker container first with the force flag, which stops it if it is still running and then removes it. Then we remove the Docker network. Each command prints the name of the resource it removed, confirming the cleanup completed successfully.

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
   docker rm -f m01l01-broker
   docker network rm m01l01-net
   ```

## How to check

**Read along.** It needs Docker (or another container engine), which the lab sandbox does not have. Run it on a machine with Docker installed.

There is nothing to check: `./check m01l01-06` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m01l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
