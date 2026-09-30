# m05l03-08 · Remove the broker and network

**Lesson:** [Compatibility Modes](https://learnsome.tech/learn/kafka-course/m05l03) (lesson 5.3, module 5: Schemas, Serialisation And Evolution) · Pro  
**Check:** Checker

## Goal

You can set a compatibility level on a schema registry subject, demonstrate that an incompatible schema change is rejected, register a backward-compatible addition, and explain the practical difference between BACKWARD, FORWARD, and FULL modes.

In the lesson: The broker and network are removed after the lesson. All registered schemas and compatibility settings are lost when the container stops. In a production schema registry these settings are persisted to durable storage, but for this lesson the goal was to observe how the compatibility enforcement works, not to maintain a long-lived registry.

## Files

- [`starter/register_bad.sh`](starter/register_bad.sh)
- [`starter/register_v1.sh`](starter/register_v1.sh)
- [`starter/register_v2.sh`](starter/register_v2.sh)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`starter/setup.sh`](starter/setup.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m05l03/m05l03-08/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   docker rm -f m05l03-broker
   docker network rm m05l03-net
   ```
4. Edit `session.sh` and check it: `bash -n session.sh`.
5. Check it from the repository root: `./check m05l03-08`.

## How to check

`./check m05l03-08` copies `starter/` into a scratch directory and runs `bash -n session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the shell script parses (`bash -n`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m05l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
