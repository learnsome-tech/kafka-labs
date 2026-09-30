# m02l05-03 · Write the non-idempotent duplicate producer

**Lesson:** [Idempotent Producers And Retries](https://learnsome.tech/learn/kafka-course/m02l05) (lesson 2.5, module 2: Producers: Keys, Batches And Acks) · Pro  
**Check:** Checker

## Goal

You can configure enable-idempotence on a KafkaProducer, explain what sequence numbers the broker uses to detect duplicate produce requests, and demonstrate that without idempotence a simulated retry produces duplicate records.

In the lesson: This producer uses acks all and disables automatic retries so each send is a single attempt. The first loop sends three records labelled payment-zero through payment-two and prints the offset each one receives. The second loop sends the same three byte strings again, simulating what a retry loop would do if the application did not track which records had already been delivered. In a real network failure scenario, the first loop might have succeeded at the broker but the acknowledgement was lost; the second loop is the application retrying without knowing the first attempt worked. Without idempotence at the broker level, both loops write their records and the topic ends up with six records, three of which are logical duplicates.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/send-twice.py`](starter/send-twice.py): the listing from the lesson
- [`starter/setup.sh`](starter/setup.sh)
- [`starter/start.sh`](starter/start.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m02l05/m02l05-03/starter`
2. Read `send-twice.py`.
3. Edit `send-twice.py` and check it: `python3 -m py_compile send-twice.py`.
4. Check it from the repository root: `./check m02l05-03`.

## How to check

`./check m02l05-03` copies `starter/` into a scratch directory and runs `python3 -m py_compile send-twice.py` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the Python program compiles (`python3 -m py_compile`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m02l05) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
