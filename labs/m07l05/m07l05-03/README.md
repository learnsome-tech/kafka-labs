# m07l05-03 · Print a decision table from a rule dictionary

**Lesson:** [When Kafka Is The Wrong Tool](https://learnsome.tech/learn/kafka-course/m07l05) (lesson 7.5, module 7: Operating A Cluster) · Pro  
**Check:** Checker

## Goal

You can list three scenarios where a message queue, a database table, or direct RPC is a better fit than Kafka, and explain the operational cost of running a broker cluster.

In the lesson: The decision program builds a simple table from a list of pairs: scenario on the left, recommended tool on the right. The column width is computed from the longest label so the table aligns each scenario with its better fit. Request-reply is the clearest mismatch with Kafka: a caller waiting for one answer should use a direct call, not a topic. A task that must run exactly once per message belongs in a queue that gives per-message acknowledgement, like RabbitMQ or SQS. Shared mutable state belongs in a database. Audit logs, fan-out, and ordered streams per entity are where Kafka shines.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/decide.py`](starter/decide.py): the listing from the lesson
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/setup.sh`](starter/setup.sh)
- [`starter/show-cost.sh`](starter/show-cost.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m07l05/m07l05-03/starter`
2. Read `decide.py`.
3. Edit `decide.py` and check it: `python3 -m py_compile decide.py`.
4. Check it from the repository root: `./check m07l05-03`.

## How to check

`./check m07l05-03` copies `starter/` into a scratch directory and runs `python3 -m py_compile decide.py` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the Python program compiles (`python3 -m py_compile`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m07l05) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
