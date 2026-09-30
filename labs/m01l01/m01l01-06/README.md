# m01l01-06 · Remove the broker and network

**Lesson:** [Why A Log And Not A Queue](https://learnsome.tech/learn/kafka-course/m01l01) (lesson 1.1, module 1: The Log: Topics, Partitions And Offsets) · Free  
**Check:** Checker

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

1. Go to the starter: `cd labs/m01l01/m01l01-06/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   docker rm -f m01l01-broker
   docker network rm m01l01-net
   ```
4. Edit `session.sh` and check it: `bash -n session.sh`.
5. Check it from the repository root: `./check m01l01-06`.

## How to check

`./check m01l01-06` copies `starter/` into a scratch directory and runs `bash -n session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the shell script parses (`bash -n`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m01l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
