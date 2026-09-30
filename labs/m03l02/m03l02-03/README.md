# m03l02-03 · Create a three-partition topic and produce six records

**Lesson:** [Consumer Groups And Partition Assignment](https://learnsome.tech/learn/kafka-course/m03l02) (lesson 3.2, module 3: Consumers And Consumer Groups) · Pro  
**Check:** Checker

## Goal

You can explain how Kafka assigns partitions across a consumer group, run a consumer that reports its assignment, and read rpk group describe to verify committed offsets per partition.

In the lesson: We create the topic with three partitions explicitly. Each partition will hold two records. We use the partition flag on rpk to force each record to a specific partition rather than letting the default key-hash routing decide, which lets the example stay deterministic regardless of how the hash falls. Partitions zero, one, and two each receive two single-letter values. The produce output carries a timestamp that changes on every run, so we move past it with an elision and read the results through the Python consumer.

## Files

- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`starter/setup.sh`](starter/setup.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m03l02/m03l02-03/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   B=m03l02-broker ; T=m03l02-events
   docker exec $B rpk topic create m03l02-events --partitions 3
   echo a | docker exec -i $B rpk topic produce $T --partition 0
   echo b | docker exec -i $B rpk topic produce $T --partition 0
   echo c | docker exec -i $B rpk topic produce $T --partition 1
   echo d | docker exec -i $B rpk topic produce $T --partition 1
   echo e | docker exec -i $B rpk topic produce $T --partition 2
   echo f | docker exec -i $B rpk topic produce $T --partition 2
   ```
4. Edit `session.sh` and check it: `bash -n session.sh`.
5. Check it from the repository root: `./check m03l02-03`.

## How to check

`./check m03l02-03` copies `starter/` into a scratch directory and runs `bash -n session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the shell script parses (`bash -n`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m03l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
