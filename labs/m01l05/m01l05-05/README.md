# m01l05-05 · Set size-based retention and inspect the config

**Lesson:** [Retention: Time, Size And Why Data Stays](https://learnsome.tech/learn/kafka-course/m01l05) (lesson 1.5, module 1: The Log: Topics, Partitions And Offsets) · Free  
**Check:** Checker

## Goal

You can set time-based and size-based retention on a topic with rpk topic alter-config, verify the settings with rpk topic describe -c, and explain why retention deletes at segment boundaries rather than individual records.

In the lesson: Now we set a size ceiling for the topic. Retention bytes controls the maximum total size of the partition's log segments on disk. We set it to one million bytes, roughly one megabyte, which is a very tight ceiling for a demo. After the alter-config command applies the change, we describe the topic again with the config flag to confirm the new setting is present alongside the time-based retention we set in the previous segment. You can see from the output that retention bytes is now one million. The two retention settings work independently and either can trigger cleanup: if the partition exceeds one million bytes the broker will delete old segments regardless of their age.

## Files

- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`starter/setup.sh`](starter/setup.sh)
- [`starter/start.sh`](starter/start.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m01l05/m01l05-05/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   B=m01l05-broker
   T=m01l05-events
   CFG=retention.bytes=1000000
   docker exec $B rpk topic alter-config $T -s $CFG
   docker exec $B rpk topic describe -c $T
   ```
4. Edit `session.sh` and check it: `bash -n session.sh`.
5. Check it from the repository root: `./check m01l05-05`.

## How to check

`./check m01l05-05` copies `starter/` into a scratch directory and runs `bash -n session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the shell script parses (`bash -n`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m01l05) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
