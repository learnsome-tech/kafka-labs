# m02l04-02 · Start the broker and create the topic

**Lesson:** [Batching, Linger And Throughput](https://learnsome.tech/learn/kafka-course/m02l04) (lesson 2.4, module 2: Producers: Keys, Batches And Acks) · Pro  
**Check:** Checker

## Goal

You can configure batch-size, linger-ms, and compression-type on a KafkaProducer and explain what each setting trades against to increase throughput.

In the lesson: Both producers in this lesson write to the same topic so you can verify the total record count at the end. The single-partition topic keeps the high-watermark easy to interpret: after both runs complete, the high-watermark equals the total number of records both producers sent combined. This gives you a direct check that neither batching strategy lost any records, independent of timing or the number of network requests made.

## Files

- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/start.sh`](starter/start.sh): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m02l04/m02l04-02/starter`
2. Read `start.sh`.
3. Edit `start.sh` and check it: `bash -n start.sh`.
4. Check it from the repository root: `./check m02l04-02`.

## How to check

`./check m02l04-02` copies `starter/` into a scratch directory and runs `bash -n start.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the shell script parses (`bash -n`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m02l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
