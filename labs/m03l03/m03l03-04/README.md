# m03l03-04 · Write the consumer with manual commit control

**Lesson:** [Committing Offsets: Auto, Manual And Lag](https://learnsome.tech/learn/kafka-course/m03l03) (lesson 3.3, module 3: Consumers And Consumer Groups) · Pro  
**Check:** Read along

## Goal

You can configure a KafkaConsumer to commit offsets manually, observe the lag a consumer group carries before committing, and confirm that a second run resumes from the committed position.

In the lesson: The consumer reads a command-line flag to decide whether to commit after reading. Setting enable-auto-commit to false means no offset is written unless the script explicitly calls commit. This single switch gives the program complete control: the for loop reads all four records and prints them either way, but the committed position on the broker only advances when the flag is present. Writing the flag check after the for loop means reading always completes before the commit decision is made, which reflects the at-least-once pattern we explore in the final lesson of this module. The build uses the kafka-client Dockerfile, which already contains the kafka-python package.

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
   docker build -q -t m03l03-client . >/dev/null
   ```

## How to check

**Read along.** It needs Docker (or another container engine), which the lab sandbox does not have. Run it on a machine with Docker installed.

There is nothing to check: `./check m03l03-04` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m03l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
