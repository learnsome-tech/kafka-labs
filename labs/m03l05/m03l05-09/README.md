# m03l05-09 · Remove the broker and network

**Lesson:** [At Most Once, At Least Once](https://learnsome.tech/learn/kafka-course/m03l05) (lesson 3.5, module 3: Consumers And Consumer Groups) · Pro  
**Check:** Checker

## Goal

You can implement at-least-once and at-most-once consumers, simulate a crash mid-batch, and explain which records are reprocessed or lost in each scenario.

In the lesson: We stop the broker and remove the network. The broker exits cleanly and the network disappears. Both consumer groups, the pipeline group and the at-most-once group, existed only on this broker and are gone with it.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/alo.py`](starter/alo.py)
- [`starter/amo.py`](starter/amo.py)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`starter/setup.sh`](starter/setup.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m03l05/m03l05-09/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   docker rm -f m03l05-broker
   docker network rm m03l05-net
   ```
4. Edit `session.sh` and check it: `bash -n session.sh`.
5. Check it from the repository root: `./check m03l05-09`.

## How to check

`./check m03l05-09` copies `starter/` into a scratch directory and runs `bash -n session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the shell script parses (`bash -n`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m03l05) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
