# m02l03-02 · Start the broker and create the topic

**Lesson:** [Acknowledgements: What Acks Means For Durability](https://learnsome.tech/learn/kafka-course/m02l03) (lesson 2.3, module 2: Producers: Keys, Batches And Acks) · Pro  
**Check:** Checker

## Goal

You can set acks on a KafkaProducer to zero, one, or all, explain what each level waits for, and describe what min-insync-replicas does when a write requires confirmation from more replicas than are currently available.

In the lesson: The topic for this lesson is named reliable because the lesson is about durability guarantees. The broker starts with one replica per partition, which is the default for a single-node cluster. A single replica means the leader and the sole in-sync replica are the same broker. Later in the lesson you will set min-insync-replicas to two and see what the error looks like when that requirement cannot be met, because the demonstration requires showing you what the error message says rather than pretending the configuration is always satisfiable.

## Files

- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/start.sh`](starter/start.sh): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m02l03/m02l03-02/starter`
2. Read `start.sh`.
3. Edit `start.sh` and check it: `bash -n start.sh`.
4. Check it from the repository root: `./check m02l03-02`.

## How to check

`./check m02l03-02` copies `starter/` into a scratch directory and runs `bash -n start.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the shell script parses (`bash -n`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m02l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
