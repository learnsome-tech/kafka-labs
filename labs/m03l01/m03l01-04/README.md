# m03l01-04 · Write the consumer program and build the image

**Lesson:** [A Consumer In Python](https://learnsome.tech/learn/kafka-course/m03l01) (lesson 3.1, module 3: Consumers And Consumer Groups) · Pro  
**Check:** Checker

## Goal

You can write a KafkaConsumer in Python that reads from the beginning of a topic, prints partition, offset, key and value for every record, and exits automatically when the topic goes quiet.

In the lesson: The consumer program opens a connection to the broker using its container hostname and the default Kafka port. The subscription is implicit: passing the topic name to the constructor calls subscribe internally. Setting auto-offset-reset to earliest means partition zero starts at the very first record when no commit exists for the group. The consumer-timeout value of three thousand milliseconds lets the script exit after three seconds of silence. For each message the for loop receives, we decode the key and the value from raw bytes, strip any trailing whitespace, and print four fields on one line. The build step uses the Dockerfile from the kafka-client context, which already has the kafka-python package installed.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/consumer.py`](starter/consumer.py): the listing from the lesson
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/setup.sh`](starter/setup.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m03l01/m03l01-04/starter`
2. Read `consumer.py`.
3. Edit `consumer.py` and check it: `python3 -m py_compile consumer.py`.
4. Check it from the repository root: `./check m03l01-04`.

## How to check

`./check m03l01-04` copies `starter/` into a scratch directory and runs `python3 -m py_compile consumer.py` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the Python program compiles (`python3 -m py_compile`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m03l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
