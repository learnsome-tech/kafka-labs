# m03l04-05 · Run the consumer and observe the rebalance

**Lesson:** [Rebalancing And Its Cost](https://learnsome.tech/learn/kafka-course/m03l04) (lesson 3.4, module 3: Consumers And Consumer Groups) · Pro  
**Check:** Checker

## Goal

You can explain what triggers a rebalance, configure session and heartbeat timeouts, and describe what happens to a consumer that exceeds max-poll-interval-milliseconds.

In the lesson: The consumer joins the workers group and the first rebalance assigns all three partitions to it, since it is the only member. The listener runs and prints each partition received in ascending order. After the listener runs, the for loop reads one record from each partition, sorts them, and prints the results: a from partition zero, b from partition one, c from partition two. The consumer-timeout fires after four seconds of silence and the sorted records appear. Adding a second consumer to the same group while this one was running would trigger a second rebalance, run the listener again with a smaller assignment, and divide the partitions between the two members.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/consumer.py`](starter/consumer.py): the listing from the lesson
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/setup.sh`](starter/setup.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m03l04/m03l04-05/starter`
2. Read `consumer.py`.
3. Edit `consumer.py` and check it: `python3 -m py_compile consumer.py`.
4. Check it from the repository root: `./check m03l04-05`.

## How to check

`./check m03l04-05` copies `starter/` into a scratch directory and runs `python3 -m py_compile consumer.py` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the Python program compiles (`python3 -m py_compile`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m03l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
