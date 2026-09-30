# m02l05-02 · Start the broker and create both topics

**Lesson:** [Idempotent Producers And Retries](https://learnsome.tech/learn/kafka-course/m02l05) (lesson 2.5, module 2: Producers: Keys, Batches And Acks) · Pro  
**Check:** Checker

## Goal

You can configure enable-idempotence on a KafkaProducer, explain what sequence numbers the broker uses to detect duplicate produce requests, and demonstrate that without idempotence a simulated retry produces duplicate records.

In the lesson: Two topics serve different purposes here. The first topic, named with the suffix dup, receives records from a producer that does not use idempotence; it will collect duplicates from a simulated retry. The second topic, named idemp, receives records from the idempotent producer. Creating both topics before running any code keeps the lesson output predictable: auto-creation assigns the same default partition count, and the high-watermark starts at zero for each. Separating the two cases into separate topics makes it easy to count records independently at the end.

## Files

- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/start.sh`](starter/start.sh): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m02l05/m02l05-02/starter`
2. Read `start.sh`.
3. Edit `start.sh` and check it: `bash -n start.sh`.
4. Check it from the repository root: `./check m02l05-02`.

## How to check

`./check m02l05-02` copies `starter/` into a scratch directory and runs `bash -n start.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the shell script parses (`bash -n`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m02l05) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
