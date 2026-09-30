# m02l01-04 · Send ten records and read the offsets

**Lesson:** [A Producer In Python](https://learnsome.tech/learn/kafka-course/m02l01) (lesson 2.1, module 2: Producers: Keys, Batches And Acks) · Pro  
**Check:** Checker

## Goal

You can write a KafkaProducer that sends records to a topic, block on the returned future, and read the partition and offset from the metadata the broker returns.

In the lesson: The run script mounts the working directory into the container so the program file is available at the path the Python interpreter expects. The container joins the lesson network, so the broker hostname resolves and the Kafka connection succeeds. Each of the ten records lands in partition zero because the topic has a single partition and the records carry no key, so the broker has only one place to put them. The offsets ascend from zero to nine, one per record, in exactly the order the loop produced them. Because the loop calls get after every send, the records are acknowledged one at a time rather than batched. This blocking pattern makes the output straightforward: each printed line reflects one completed round trip from the producer to the broker and back, with the assigned offset confirmed by the broker itself.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/producer.py`](starter/producer.py)
- [`starter/run.sh`](starter/run.sh): the listing from the lesson
- [`starter/setup.sh`](starter/setup.sh)
- [`starter/start.sh`](starter/start.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m02l01/m02l01-04/starter`
2. Read `run.sh`.
3. Edit `run.sh` and check it: `bash -n run.sh`.
4. Check it from the repository root: `./check m02l01-04`.

## How to check

`./check m02l01-04` copies `starter/` into a scratch directory and runs `bash -n run.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the shell script parses (`bash -n`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m02l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
