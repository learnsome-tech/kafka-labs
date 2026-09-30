# m07l02-06 · Describe partitions and clean up

**Lesson:** [In-Sync Replicas And Minimum ISR](https://learnsome.tech/learn/kafka-course/m07l02) (lesson 7.2, module 7: Operating A Cluster) · Pro  
**Check:** Checker

## Goal

You can read the in-sync replica set for a topic, set the minimum in-sync replica count, and explain why that number gates whether acks-all writes succeed.

In the lesson: Store the prefix, then describe the topic's partitions. The REPLICAS column confirms three copies per partition; the ISR is not shown by this command but was visible through the admin client earlier. The data rows are elided because leaders vary by election, but the structure is stable. Then remove the three broker containers and the network to leave the daemon clean. In the next lesson you will take one of these brokers offline deliberately and watch the ISR shrink, leader election happen, and the cluster continue serving with the remaining two members.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/isr.py`](starter/isr.py)
- [`starter/prod.py`](starter/prod.py)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`starter/setup.sh`](starter/setup.sh)
- [`starter/start-m07l02.sh`](starter/start-m07l02.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m07l02/m07l02-06/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   B="docker exec m07l02-b1"
   $B rpk topic describe m07l02-events -p
   docker rm -f m07l02-b1 m07l02-b2 m07l02-b3
   docker network rm m07l02-net
   ```
4. Edit `session.sh` and check it: `bash -n session.sh`.
5. Check it from the repository root: `./check m07l02-06`.

## How to check

`./check m07l02-06` copies `starter/` into a scratch directory and runs `bash -n session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the shell script parses (`bash -n`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m07l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
