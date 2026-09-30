# m07l05-05 · Remove the cluster

**Lesson:** [When Kafka Is The Wrong Tool](https://learnsome.tech/learn/kafka-course/m07l05) (lesson 7.5, module 7: Operating A Cluster) · Pro  
**Check:** Checker

## Goal

You can list three scenarios where a message queue, a database table, or direct RPC is a better fit than Kafka, and explain the operational cost of running a broker cluster.

In the lesson: Remove the three broker containers and the network. The cluster existed only to make the operational footprint visible. Three containers is not much on a development machine, but it represents the minimum shape of a production system that also includes load balancers, schema registries, monitoring agents, alerting pipelines, and the engineers who understand all of them.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/decide.py`](starter/decide.py)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`starter/setup.sh`](starter/setup.sh)
- [`starter/show-cost.sh`](starter/show-cost.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m07l05/m07l05-05/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   docker rm -f m07l05-b1 m07l05-b2 m07l05-b3
   docker network rm m07l05-net
   ```
4. Edit `session.sh` and check it: `bash -n session.sh`.
5. Check it from the repository root: `./check m07l05-05`.

## How to check

`./check m07l05-05` copies `starter/` into a scratch directory and runs `bash -n session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the shell script parses (`bash -n`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m07l05) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
