# m03l01-02 · Start the broker and network

**Lesson:** [A Consumer In Python](https://learnsome.tech/learn/kafka-course/m03l01) (lesson 3.1, module 3: Consumers And Consumer Groups) · Pro  
**Check:** Checker

## Goal

You can write a KafkaConsumer in Python that reads from the beginning of a topic, prints partition, offset, key and value for every record, and exits automatically when the topic goes quiet.

In the lesson: Before anything can be produced or consumed, we need a running broker and a Docker network so containers can reach each other by name. The script creates the network first, then starts the Redpanda broker in single-node development mode with one thread and five hundred and twelve megabytes of memory. The sleep command at the end gives the broker six seconds to bind its Kafka port before the next step tries to connect. Both the network and the broker carry the lesson name, which keeps them from colliding with any other work happening on the same machine.

## Files

- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/setup.sh`](starter/setup.sh): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m03l01/m03l01-02/starter`
2. Read `setup.sh`.
3. Edit `setup.sh` and check it: `bash -n setup.sh`.
4. Check it from the repository root: `./check m03l01-02`.

## How to check

`./check m03l01-02` copies `starter/` into a scratch directory and runs `bash -n setup.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the shell script parses (`bash -n`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m03l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
