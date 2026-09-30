# m02l03-05 · Set min-insync-replicas and describe the partition

**Lesson:** [Acknowledgements: What Acks Means For Durability](https://learnsome.tech/learn/kafka-course/m02l03) (lesson 2.3, module 2: Producers: Keys, Batches And Acks) · Pro  
**Check:** Checker

## Goal

You can set acks on a KafkaProducer to zero, one, or all, explain what each level waits for, and describe what min-insync-replicas does when a write requires confirmation from more replicas than are currently available.

In the lesson: The alter-config command sets min-insync-replicas to two on the reliable topic. The partition describe shows that the topic has one replica in its replica set, which is broker zero. The high-watermark is zero because no records have been written to this topic yet. A single replica means the in-sync replica count is always one; requiring two in-sync replicas for acks-all writes creates a condition that can never be satisfied on this single-node cluster. The broker accepts the configuration change but cannot honor it for any acks-all write. The cleanup removes the broker and network at the end of the script.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/acks.py`](starter/acks.py)
- [`starter/alter.sh`](starter/alter.sh): the listing from the lesson
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/setup.sh`](starter/setup.sh)
- [`starter/start.sh`](starter/start.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m02l03/m02l03-05/starter`
2. Read `alter.sh`.
3. Edit `alter.sh` and check it: `bash -n alter.sh`.
4. Check it from the repository root: `./check m02l03-05`.

## How to check

`./check m02l03-05` copies `starter/` into a scratch directory and runs `bash -n alter.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the shell script parses (`bash -n`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m02l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
