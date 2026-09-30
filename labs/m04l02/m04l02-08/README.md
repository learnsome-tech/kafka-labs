# m04l02-08 · Tear down the lesson environment

**Lesson:** [Idempotent Consumers And Deduplication Keys](https://learnsome.tech/learn/kafka-course/m04l02) (lesson 4.2, module 4: Delivery Guarantees And Transactions) · Pro  
**Check:** Checker

## Goal

You can implement a consumer that skips duplicate events using an event identifier in the record value, and explain when a deduplication table is necessary versus when natural idempotence is sufficient.

In the lesson: Stop the broker and remove the network to restore the machine to its original state. Both commands print the name of the resource they removed, confirming that the cleanup targeted the correct objects. The seen-set file in the working directory is removed when the verifier clears the temporary directory after the lesson finishes.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/dedup.py`](starter/dedup.py)
- [`starter/producer.py`](starter/producer.py)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`starter/setup.sh`](starter/setup.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m04l02/m04l02-08/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   docker rm -f m04l02-broker
   docker network rm m04l02-net
   ```
4. Edit `session.sh` and check it: `bash -n session.sh`.
5. Check it from the repository root: `./check m04l02-08`.

## How to check

`./check m04l02-08` copies `starter/` into a scratch directory and runs `bash -n session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the shell script parses (`bash -n`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m04l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
