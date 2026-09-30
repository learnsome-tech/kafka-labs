# m01l03-07 · Remove the broker and network

**Lesson:** [Topics, Partitions And Where A Record Lands](https://learnsome.tech/learn/kafka-course/m01l03) (lesson 1.3, module 1: The Log: Topics, Partitions And Offsets) · Free  
**Check:** Checker

## Goal

You can create a topic with multiple partitions, produce keyed records and confirm they always land on the same partition, and explain why unkeyed records do not carry ordering guarantees.

In the lesson: We clean up the broker container and network before finishing the lesson. The force flag on docker rm handles containers that are still running their shutdown sequence. The Docker network cannot be removed while a container is still attached to it, so we always remove the container first. Both commands echo the name of the resource they removed. Running these two commands in this order at the end of every lesson keeps the daemon in a clean state and prevents name collisions on the next verification run.

## Files

- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`starter/setup.sh`](starter/setup.sh)
- [`starter/start.sh`](starter/start.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m01l03/m01l03-07/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   docker rm -f m01l03-broker
   docker network rm m01l03-net
   ```
4. Edit `session.sh` and check it: `bash -n session.sh`.
5. Check it from the repository root: `./check m01l03-07`.

## How to check

`./check m01l03-07` copies `starter/` into a scratch directory and runs `bash -n session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the shell script parses (`bash -n`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m01l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
