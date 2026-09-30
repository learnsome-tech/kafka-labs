# m03l01-04 · Write the consumer program and build the image

**Lesson:** [A Consumer In Python](https://learnsome.tech/learn/kafka-course/m03l01) (lesson 3.1, module 3: Consumers And Consumer Groups) · Pro  
**Check:** Read along

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

1. Read `starter/consumer.py` alongside the lesson.
2. On a machine that has what it needs, the lesson ran it with:

   ```sh
   bash setup.sh >/dev/null 2>&1
   docker build -q -t m03l01-client . >/dev/null
   ```

## How to check

**Read along.** It needs Docker (or another container engine), which the lab sandbox does not have. Run it on a machine with Docker installed.

There is nothing to check: `./check m03l01-04` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m03l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
