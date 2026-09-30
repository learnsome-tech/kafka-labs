# m02l05-06 · Read the duplicate topic to confirm, then clean up

**Lesson:** [Idempotent Producers And Retries](https://learnsome.tech/learn/kafka-course/m02l05) (lesson 2.5, module 2: Producers: Keys, Batches And Acks) · Pro  
**Check:** Checker

## Goal

You can configure enable-idempotence on a KafkaProducer, explain what sequence numbers the broker uses to detect duplicate produce requests, and demonstrate that without idempotence a simulated retry produces duplicate records.

In the lesson: Consuming the duplicate topic reveals exactly six records. Payment-zero, payment-one, and payment-two each appear twice in succession, in the same order the producer wrote them. A downstream service reading this topic and processing each record without deduplication would handle each payment twice, potentially charging a customer twice or triggering a double shipment. This is the core hazard of at-least-once delivery: the duplicate is invisible to the producer, which saw a successful acknowledgement for all six sends, but fully visible to any consumer that reads the topic. The idempotent producer prevents exactly this class of duplicate at the broker level, so the consumer never needs to implement its own retry deduplication. After confirming the duplicates are visible, the session removes the broker and the network.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/idemp.py`](starter/idemp.py)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/send-twice.py`](starter/send-twice.py)
- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`starter/setup.sh`](starter/setup.sh)
- [`starter/start.sh`](starter/start.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m02l05/m02l05-06/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   B=m02l05-broker
   docker exec $B rpk topic consume m02l05-dup -f '%v\n' --num 6
   docker rm -f m02l05-broker
   docker network rm m02l05-net
   ```
4. Edit `session.sh` and check it: `bash -n session.sh`.
5. Check it from the repository root: `./check m02l05-06`.

## How to check

`./check m02l05-06` copies `starter/` into a scratch directory and runs `bash -n session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the shell script parses (`bash -n`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m02l05) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
