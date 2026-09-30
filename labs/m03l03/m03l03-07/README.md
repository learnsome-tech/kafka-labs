# m03l03-07 · Inspect the group and clean up

**Lesson:** [Committing Offsets: Auto, Manual And Lag](https://learnsome.tech/learn/kafka-course/m03l03) (lesson 3.3, module 3: Consumers And Consumer Groups) · Pro  
**Check:** Checker

## Goal

You can configure a KafkaConsumer to commit offsets manually, observe the lag a consumer group carries before committing, and confirm that a second run resumes from the committed position.

In the lesson: Running rpk group describe on the auditors group shows the committed offset for partition zero alongside the log-end-offset and the lag. After the commit run, both the committed-offset and the log-end-offset sit at four, so the lag is zero. This is the state a well-behaved consumer leaves behind: it has acknowledged everything it read. We then stop the broker and remove the network.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/consumer.py`](starter/consumer.py)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`starter/setup.sh`](starter/setup.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m03l03/m03l03-07/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   docker exec m03l03-broker rpk group describe m03l03-auditors
   docker rm -f m03l03-broker
   docker network rm m03l03-net
   ```
4. Edit `session.sh` and check it: `bash -n session.sh`.
5. Check it from the repository root: `./check m03l03-07`.

## How to check

`./check m03l03-07` copies `starter/` into a scratch directory and runs `bash -n session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the shell script parses (`bash -n`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m03l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
