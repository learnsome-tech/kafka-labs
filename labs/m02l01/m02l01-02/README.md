# m02l01-02 · Start the broker and create the topic

**Lesson:** [A Producer In Python](https://learnsome.tech/learn/kafka-course/m02l01) (lesson 2.1, module 2: Producers: Keys, Batches And Acks) · Pro  
**Check:** Checker

## Goal

You can write a KafkaProducer that sends records to a topic, block on the returned future, and read the partition and offset from the metadata the broker returns.

In the lesson: The startup script does four things in sequence. First it creates a dedicated network so the client container can reach the broker by hostname rather than by IP address. Then it starts Redpanda in single-node development mode with one CPU shard and five hundred and twelve megabytes of memory; this configuration boots in about three seconds. The script pauses for six seconds to let the broker finish its internal leadership election before any client tries to connect. Finally it creates the topic that the producer will write to. You see two identifiers - one for the network and one for the container - followed by a confirmation that the topic was created successfully. These identifiers are masked in the transcript because they change on every run, but everything else is stable text you can compare against.

## Files

- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/start.sh`](starter/start.sh): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m02l01/m02l01-02/starter`
2. Read `start.sh`.
3. Edit `start.sh` and check it: `bash -n start.sh`.
4. Check it from the repository root: `./check m02l01-02`.

## How to check

`./check m02l01-02` copies `starter/` into a scratch directory and runs `bash -n start.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the shell script parses (`bash -n`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m02l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
