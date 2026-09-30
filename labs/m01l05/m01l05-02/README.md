# m01l05-02 · Start a network and broker

**Lesson:** [Retention: Time, Size And Why Data Stays](https://learnsome.tech/learn/kafka-course/m01l05) (lesson 1.5, module 1: The Log: Topics, Partitions And Offsets) · Free  
**Check:** Checker

## Goal

You can set time-based and size-based retention on a topic with rpk topic alter-config, verify the settings with rpk topic describe -c, and explain why retention deletes at segment boundaries rather than individual records.

In the lesson: We follow the same broker startup recipe used throughout this module. A new Docker network and a new Redpanda container, both named after this lesson to isolate them from anything else on the shared machine. Dev container mode, one processor core, half a gigabyte of memory, and the kafka address advertised as the container name on the network. The script completes once both resources exist. The two output lines in the panel below confirm the network identifier and the container identifier. The retention configuration commands later in this lesson use rpk topic alter-config, which applies changes to a live topic without requiring a broker restart.

## Files

- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/start.sh`](starter/start.sh): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m01l05/m01l05-02/starter`
2. Read `start.sh`.
3. Edit `start.sh` and check it: `bash -n start.sh`.
4. Check it from the repository root: `./check m01l05-02`.

## How to check

`./check m01l05-02` copies `starter/` into a scratch directory and runs `bash -n start.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the shell script parses (`bash -n`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m01l05) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
