# m07l04-05 · Measure lag and add partitions

**Lesson:** [Watching Lag And Sizing Partitions](https://learnsome.tech/learn/kafka-course/m07l04) (lesson 7.4, module 7: Operating A Cluster) · Pro  
**Check:** Checker

## Goal

You can measure consumer group lag with rpk group describe, add partitions to an existing topic, and explain why partition count is a ceiling on consumer-side parallelism.

In the lesson: The group describe output shows total lag of three: the group committed at offset two for partition zero but the topic now has five records at that partition. The per-partition breakdown confirms partitions one and two have zero lag because no records were sent there. Then add two more partitions to the topic: the OK line confirms the change. Describe the partitions: five partitions now visible in the header. New partitions initially have no records so their offsets read as zero or unknown until the first record arrives. Existing records in partition zero stay put; adding partitions never moves historical data.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/cons.py`](starter/cons.py)
- [`starter/prod.py`](starter/prod.py)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`starter/setup.sh`](starter/setup.sh)
- [`starter/start-m07l04.sh`](starter/start-m07l04.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m07l04/m07l04-05/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   B="docker exec m07l04-b1"
   $B rpk group describe m07l04-grp
   $B rpk topic add-partitions m07l04-ev --num 2
   $B rpk topic describe m07l04-ev -p
   ```
4. Edit `session.sh` and check it: `bash -n session.sh`.
5. Check it from the repository root: `./check m07l04-05`.

## How to check

`./check m07l04-05` copies `starter/` into a scratch directory and runs `bash -n session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the shell script parses (`bash -n`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m07l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
