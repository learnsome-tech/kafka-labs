# m01l02-02 · Start a network and broker

**Lesson:** [Starting A Broker And Reading Its Metadata](https://learnsome.tech/learn/kafka-course/m01l02) (lesson 1.2, module 1: The Log: Topics, Partitions And Offsets) · Free  
**Check:** Checker

## Goal

You can start a Redpanda broker with the correct networking flags, read its cluster state with rpk cluster info and rpk cluster health, and explain why the advertised address must be the container name.

In the lesson: The broker recipe is the same one we established in the previous lesson, updated to use names tied to this lesson's identifier. We create the network first, name it after the lesson, and then start Redpanda in dev container mode on that network with the same flags: one processor core, half a gigabyte of memory, and the kafka address advertised as the container name. Notice that the script is the only thing that changes between lessons: the container name and network name use the lesson prefix so they cannot collide with resources from other lessons running at the same time. The network identifier and container identifier print to the panel below when the script completes. After this point every rpk command we run will go through docker exec against this broker container.

## Files

- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/start.sh`](starter/start.sh): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m01l02/m01l02-02/starter`
2. Read `start.sh`.
3. Edit `start.sh` and check it: `bash -n start.sh`.
4. Check it from the repository root: `./check m01l02-02`.

## How to check

`./check m01l02-02` copies `starter/` into a scratch directory and runs `bash -n start.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the shell script parses (`bash -n`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m01l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
