# m07l05-02 · Show the cost of running three broker containers

**Lesson:** [When Kafka Is The Wrong Tool](https://learnsome.tech/learn/kafka-course/m07l05) (lesson 7.5, module 7: Operating A Cluster) · Pro  
**Check:** Checker

## Goal

You can list three scenarios where a message queue, a database table, or direct RPC is a better fit than Kafka, and explain the operational cost of running a broker cluster.

In the lesson: The startup script is the same three-broker cluster pattern, but here the goal is not to demonstrate a feature. It is to demonstrate a cost. Four container identifiers appear: one network and three brokers. Each of those three brokers reserves five hundred and twelve megabytes of memory and consumes AIO capacity from the kernel. At this scale it feels lightweight, but in production each broker is a dedicated machine or a large virtual machine with hundreds of gigabytes of fast attached storage. Three of them, plus the people and tooling to keep them running, is the minimum viable cluster.

## Files

- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/show-cost.sh`](starter/show-cost.sh): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m07l05/m07l05-02/starter`
2. Read `show-cost.sh`.
3. Edit `show-cost.sh` and check it: `bash -n show-cost.sh`.
4. Check it from the repository root: `./check m07l05-02`.

## How to check

`./check m07l05-02` copies `starter/` into a scratch directory and runs `bash -n show-cost.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the shell script parses (`bash -n`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m07l05) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
