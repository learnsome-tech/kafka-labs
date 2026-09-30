# m03l05-03 · Create the topic and produce six records

**Lesson:** [At Most Once, At Least Once](https://learnsome.tech/learn/kafka-course/m03l05) (lesson 3.5, module 3: Consumers And Consumer Groups) · Pro  
**Check:** Checker

## Goal

You can implement at-least-once and at-most-once consumers, simulate a crash mid-batch, and explain which records are reprocessed or lost in each scenario.

In the lesson: We produce six records with the same key so they all land on partition zero in insertion order. The values are p, q, r, s, t, u: six letters at offsets zero through five. The crash scenario will process the first three, then exit without committing, after which a second run reads all six again from the beginning. Having exactly six records makes the duplicate set easy to count.

## Files

- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`starter/setup.sh`](starter/setup.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m03l05/m03l05-03/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   B=m03l05-broker ; T=m03l05-events
   docker exec m03l05-broker rpk topic create m03l05-events
   echo p | docker exec -i $B rpk topic produce $T --key k1
   echo q | docker exec -i $B rpk topic produce $T --key k1
   echo r | docker exec -i $B rpk topic produce $T --key k1
   echo s | docker exec -i $B rpk topic produce $T --key k1
   echo t | docker exec -i $B rpk topic produce $T --key k1
   echo u | docker exec -i $B rpk topic produce $T --key k1
   ```
4. Edit `session.sh` and check it: `bash -n session.sh`.
5. Check it from the repository root: `./check m03l05-03`.

## How to check

`./check m03l05-03` copies `starter/` into a scratch directory and runs `bash -n session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the shell script parses (`bash -n`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m03l05) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
