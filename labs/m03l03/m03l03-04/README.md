# m03l03-04 · Write the consumer with manual commit control

**Lesson:** [Committing Offsets: Auto, Manual And Lag](https://learnsome.tech/learn/kafka-course/m03l03) (lesson 3.3, module 3: Consumers And Consumer Groups) · Pro  
**Check:** Checker

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

1. Go to the starter: `cd labs/m03l03/m03l03-04/starter`
2. Read `consumer.py`.
3. Edit `consumer.py` and check it: `python3 -m py_compile consumer.py`.
4. Check it from the repository root: `./check m03l03-04`.

## How to check

`./check m03l03-04` copies `starter/` into a scratch directory and runs `python3 -m py_compile consumer.py` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the Python program compiles (`python3 -m py_compile`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m03l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
