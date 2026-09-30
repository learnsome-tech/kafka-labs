# m03l05-03 · Create the topic and produce six records

**Lesson:** [At Most Once, At Least Once](https://learnsome.tech/learn/kafka-course/m03l05) (lesson 3.5, module 3: Consumers And Consumer Groups) · Pro  
**Check:** Read along

## Goal

You can implement at-least-once and at-most-once consumers, simulate a crash mid-batch, and explain which records are reprocessed or lost in each scenario.

In the lesson: We produce six records with the same key so they all land on partition zero in insertion order. The values are p, q, r, s, t, u: six letters at offsets zero through five. The crash scenario will process the first three, then exit without committing, after which a second run reads all six again from the beginning. Having exactly six records makes the duplicate set easy to count.

## Files

- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`starter/setup.sh`](starter/setup.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/session.sh` alongside the lesson.
2. On a machine that has what it needs, the lesson ran it with:

   ```sh
   bash setup.sh >/dev/null 2>&1
   B=m03l05-broker ; T=m03l05-events
   docker exec m03l05-broker rpk topic create m03l05-events
   echo p | docker exec -i $B rpk topic produce $T --key k1
   echo q | docker exec -i $B rpk topic produce $T --key k1
   echo r | docker exec -i $B rpk topic produce $T --key k1
   echo s | docker exec -i $B rpk topic produce $T --key k1
   echo t | docker exec -i $B rpk topic produce $T --key k1
   echo u | docker exec -i $B rpk topic produce $T --key k1
   ```

## How to check

**Read along.** It needs Docker (or another container engine), which the lab sandbox does not have. Run it on a machine with Docker installed.

There is nothing to check: `./check m03l05-03` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m03l05) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
