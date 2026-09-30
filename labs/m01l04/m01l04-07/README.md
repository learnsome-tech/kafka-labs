# m01l04-07 · Remove the broker and network

**Lesson:** [Offsets: Position, Not Acknowledgement](https://learnsome.tech/learn/kafka-course/m01l04) (lesson 1.4, module 1: The Log: Topics, Partitions And Offsets) · Free  
**Check:** Checker

## Goal

You can consume a topic from a specific offset, demonstrate that two independent consumers see the same records at the same offsets, and explain why the offset belongs to the record and not to the reader.

In the lesson: We remove the broker container and the Docker network before closing the lesson. The cleanup commands are the same in every lesson: force-remove the broker first, since the network cannot be removed while a container is attached to it, then remove the network. Both commands print the name of the resource removed. The next lesson uses a fresh broker and a fresh network, so this cleanup keeps the environment consistent for every subsequent verification run.

## Files

- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`starter/setup.sh`](starter/setup.sh)
- [`starter/start.sh`](starter/start.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m01l04/m01l04-07/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   docker rm -f m01l04-broker
   docker network rm m01l04-net
   ```
4. Edit `session.sh` and check it: `bash -n session.sh`.
5. Check it from the repository root: `./check m01l04-07`.

## How to check

`./check m01l04-07` copies `starter/` into a scratch directory and runs `bash -n session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the shell script parses (`bash -n`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m01l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
