# m03l03-03 · Create the topic and produce four records

**Lesson:** [Committing Offsets: Auto, Manual And Lag](https://learnsome.tech/learn/kafka-course/m03l03) (lesson 3.3, module 3: Consumers And Consumer Groups) · Pro  
**Check:** Checker

## Goal

You can configure a KafkaConsumer to commit offsets manually, observe the lag a consumer group carries before committing, and confirm that a second run resumes from the committed position.

In the lesson: We produce four records with the same key, which guarantees they all land on partition zero in insertion order. Using the same key means the hash-based partitioner directs all four records to partition zero, so the ordering is insertion order exactly: w comes first, then x, y, and z. Four records gives us a small but clear lag number to watch change when we commit. The produce output carries timestamps that are not masked, so we elide those lines and read the results through the Python consumer.

## Files

- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`starter/setup.sh`](starter/setup.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m03l03/m03l03-03/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   B=m03l03-broker ; T=m03l03-events
   docker exec m03l03-broker rpk topic create m03l03-events
   echo w | docker exec -i $B rpk topic produce $T --key k1
   echo x | docker exec -i $B rpk topic produce $T --key k1
   echo y | docker exec -i $B rpk topic produce $T --key k1
   echo z | docker exec -i $B rpk topic produce $T --key k1
   ```
4. Edit `session.sh` and check it: `bash -n session.sh`.
5. Check it from the repository root: `./check m03l03-03`.

## How to check

`./check m03l03-03` copies `starter/` into a scratch directory and runs `bash -n session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the shell script parses (`bash -n`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m03l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
