# m02l01-05 · Confirm delivery with rpk, then clean up

**Lesson:** [A Producer In Python](https://learnsome.tech/learn/kafka-course/m02l01) (lesson 2.1, module 2: Producers: Keys, Batches And Acks) · Pro  
**Check:** Checker

## Goal

You can write a KafkaProducer that sends records to a topic, block on the returned future, and read the partition and offset from the metadata the broker returns.

In the lesson: Reading the topic with rpk confirms that the broker stored exactly what the producer sent. The format string tells rpk to print only the value of each record, which keeps timestamps out of the output and makes the result stable across repeated runs. The ten values appear in the same order they were written - record-zero through record-nine - because a single partition preserves insertion order for every record it holds. After confirming the records arrived intact, the session removes the broker container and the network. Everything the lesson created disappears, leaving the shared Docker daemon in the same state it was in before the lesson started.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/producer.py`](starter/producer.py)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`starter/setup.sh`](starter/setup.sh)
- [`starter/start.sh`](starter/start.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m02l01/m02l01-05/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   B=m02l01-broker
   docker exec $B rpk topic consume m02l01-ev -f '%v\n' --num 10
   docker rm -f m02l01-broker
   docker network rm m02l01-net
   ```
4. Edit `session.sh` and check it: `bash -n session.sh`.
5. Check it from the repository root: `./check m02l01-05`.

## How to check

`./check m02l01-05` copies `starter/` into a scratch directory and runs `bash -n session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the shell script parses (`bash -n`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m02l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
