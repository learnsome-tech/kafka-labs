# m02l05-04 · Send the duplicates and observe the offsets

**Lesson:** [Idempotent Producers And Retries](https://learnsome.tech/learn/kafka-course/m02l05) (lesson 2.5, module 2: Producers: Keys, Batches And Acks) · Pro  
**Check:** Checker

## Goal

You can configure enable-idempotence on a KafkaProducer, explain what sequence numbers the broker uses to detect duplicate produce requests, and demonstrate that without idempotence a simulated retry produces duplicate records.

In the lesson: The original sends occupy offsets zero through two, and the retry sends occupy offsets three through five. The broker treated all six sends as distinct records because the producer carried no sequence numbers for it to check. From the broker's perspective, these were six separate legitimate writes. The retry loop did not know that offsets zero, one, and two already existed; it received fresh offsets three, four, and five and reported success. Any consumer that reads all six records will see payment-zero appear twice, payment-one appear twice, and payment-two appear twice. That is the duplicate hazard that idempotence is designed to eliminate.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/run.sh`](starter/run.sh): the listing from the lesson
- [`starter/send-twice.py`](starter/send-twice.py)
- [`starter/setup.sh`](starter/setup.sh)
- [`starter/start.sh`](starter/start.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m02l05/m02l05-04/starter`
2. Read `run.sh`.
3. Edit `run.sh` and check it: `bash -n run.sh`.
4. Check it from the repository root: `./check m02l05-04`.

## How to check

`./check m02l05-04` copies `starter/` into a scratch directory and runs `bash -n run.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the shell script parses (`bash -n`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m02l05) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
