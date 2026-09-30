# m06l04-02 · Create a compacted topic and build the client

**Lesson:** [Log Compaction: A Topic As A Table](https://learnsome.tech/learn/kafka-course/m06l04) (lesson 6.4, module 6: Event-Driven: Outbox, CDC, Compaction) · Pro  
**Check:** Checker

## Goal

You can create a compacted Kafka topic, produce multiple updates for the same key, fold the full log into a key-value table in Python, and explain why compaction converges the log to the same result over time.

In the lesson: The topic is created with the cleanup policy set to compact, a very small segment size, and a low minimum cleanable ratio so the broker is aggressive about compaction. In a production deployment you would use larger segment sizes, but small values let compaction run quickly in this environment. The status confirms the compacted topic is ready.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/setup.sh`](starter/setup.sh): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m06l04/m06l04-02/starter`
2. Read `setup.sh`.
3. Edit `setup.sh` and check it: `bash -n setup.sh`.
4. Check it from the repository root: `./check m06l04-02`.

## How to check

`./check m06l04-02` copies `starter/` into a scratch directory and runs `bash -n setup.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the shell script parses (`bash -n`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m06l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
