# m01l04-02 · Start a network and broker

**Lesson:** [Offsets: Position, Not Acknowledgement](https://learnsome.tech/learn/kafka-course/m01l04) (lesson 1.4, module 1: The Log: Topics, Partitions And Offsets) · Free  
**Check:** Checker

## Goal

You can consume a topic from a specific offset, demonstrate that two independent consumers see the same records at the same offsets, and explain why the offset belongs to the record and not to the reader.

In the lesson: We start a fresh broker on its own network, named after this lesson as always. The broker recipe is unchanged from the previous lessons: dev container mode, single core, half a gigabyte of memory, and the kafka address advertised as the container name on the Docker network. Every lesson in this module follows the same startup pattern so that the broker configuration is never the variable. The network identifier and container identifier both print to the panel when the script finishes, and the broker will be ready after the short sleep at the start of the next segment.

## Files

- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/start.sh`](starter/start.sh): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m01l04/m01l04-02/starter`
2. Read `start.sh`.
3. Edit `start.sh` and check it: `bash -n start.sh`.
4. Check it from the repository root: `./check m01l04-02`.

## How to check

`./check m01l04-02` copies `starter/` into a scratch directory and runs `bash -n start.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the shell script parses (`bash -n`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m01l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
