# m02l05-06 · Read the duplicate topic to confirm, then clean up

**Lesson:** [Idempotent Producers And Retries](https://learnsome.tech/learn/kafka-course/m02l05) (lesson 2.5, module 2: Producers: Keys, Batches And Acks) · Pro  
**Check:** Read along

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

1. Read `starter/session.sh` alongside the lesson.
2. On a machine that has what it needs, the lesson ran it with:

   ```sh
   bash setup.sh >/dev/null 2>&1
   B=m02l05-broker
   docker exec $B rpk topic consume m02l05-dup -f '%v\n' --num 6
   docker rm -f m02l05-broker
   docker network rm m02l05-net
   ```

## How to check

**Read along.** It needs Docker (or another container engine), which the lab sandbox does not have. Run it on a machine with Docker installed.

There is nothing to check: `./check m02l05-06` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m02l05) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
