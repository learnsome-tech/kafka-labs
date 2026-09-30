# m03l03-02 · Start the broker and network

**Lesson:** [Committing Offsets: Auto, Manual And Lag](https://learnsome.tech/learn/kafka-course/m03l03) (lesson 3.3, module 3: Consumers And Consumer Groups) · Pro  
**Check:** Checker

## Goal

You can configure a KafkaConsumer to commit offsets manually, observe the lag a consumer group carries before committing, and confirm that a second run resumes from the committed position.

In the lesson: The broker and its network start in the same pattern as the previous lessons. The broker name and network name both carry the lesson identifier to prevent collisions with anything else running on the same machine. Two records that are produced to this broker before any consumer reads them appear as lag in every group that subscribes to the topic.

## Files

- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/setup.sh`](starter/setup.sh): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m03l03/m03l03-02/starter`
2. Read `setup.sh`.
3. Edit `setup.sh` and check it: `bash -n setup.sh`.
4. Check it from the repository root: `./check m03l03-02`.

## How to check

`./check m03l03-02` copies `starter/` into a scratch directory and runs `bash -n setup.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the shell script parses (`bash -n`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m03l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
