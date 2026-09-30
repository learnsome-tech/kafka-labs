# m07l05-05 · Remove the cluster

**Lesson:** [When Kafka Is The Wrong Tool](https://learnsome.tech/learn/kafka-course/m07l05) (lesson 7.5, module 7: Operating A Cluster) · Pro  
**Check:** Read along

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

1. Read `starter/session.sh` alongside the lesson.
2. On a machine that has what it needs, the lesson ran it with:

   ```sh
   bash setup.sh >/dev/null 2>&1
   docker rm -f m07l05-b1 m07l05-b2 m07l05-b3
   docker network rm m07l05-net
   ```

## How to check

**Read along.** It needs Docker (or another container engine), which the lab sandbox does not have. Run it on a machine with Docker installed.

There is nothing to check: `./check m07l05-05` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m07l05) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
