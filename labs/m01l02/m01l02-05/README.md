# m01l02-05 · List topics on the broker

**Lesson:** [Starting A Broker And Reading Its Metadata](https://learnsome.tech/learn/kafka-course/m01l02) (lesson 1.2, module 1: The Log: Topics, Partitions And Offsets) · Free  
**Check:** Checker

## Goal

You can start a Redpanda broker with the correct networking flags, read its cluster state with rpk cluster info and rpk cluster health, and explain why the advertised address must be the container name.

In the lesson: The last metadata command for this lesson is rpk topic list. On a fresh broker with no user topics created yet, the list comes back empty or shows only internal system topics that Redpanda uses for its own operation. We use an elision to skip those internal rows and focus on the absence of any user topics, which confirms the broker started cleanly. In later lessons this command becomes a quick sanity check: create a topic, list confirms it is there, clean up, list confirms the broker is empty again. Knowing what the clean state looks like makes it straightforward to spot when something unexpected has been left behind.

## Files

- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`starter/setup.sh`](starter/setup.sh)
- [`starter/start.sh`](starter/start.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m01l02/m01l02-05/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   B=m01l02-broker
   docker exec $B rpk topic list
   ```
4. Edit `session.sh` and check it: `bash -n session.sh`.
5. Check it from the repository root: `./check m01l02-05`.

## How to check

`./check m01l02-05` copies `starter/` into a scratch directory and runs `bash -n session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the shell script parses (`bash -n`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m01l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
