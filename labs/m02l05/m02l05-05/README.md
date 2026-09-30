# m02l05-05 · Configure and run the idempotent producer

**Lesson:** [Idempotent Producers And Retries](https://learnsome.tech/learn/kafka-course/m02l05) (lesson 2.5, module 2: Producers: Keys, Batches And Acks) · Pro  
**Check:** Read along

## Goal

You can configure enable-idempotence on a KafkaProducer, explain what sequence numbers the broker uses to detect duplicate produce requests, and demonstrate that without idempotence a simulated retry produces duplicate records.

In the lesson: The idempotent producer requires two settings beyond acks all. The enable-idempotence flag activates the protocol-level sequence numbering. The max-in-flight-requests-per-connection must be set to one when using kafka-python's idempotent mode; with a higher value the library cannot guarantee ordering of sequence numbers across in-flight batches. The broker assigns this producer a unique producer identifier at registration time. Each batch carries the producer identifier and a sequence number; the broker uses these two values together to detect and silently reject any duplicate batch. The three records here arrive at offsets zero, one, and two with no duplicates. If the network had dropped the acknowledgement for offset one and the producer had retried, the broker would have discarded the second attempt because the sequence number matched a record it had already written.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/idemp.py`](starter/idemp.py): the listing from the lesson
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/send-twice.py`](starter/send-twice.py)
- [`starter/setup.sh`](starter/setup.sh)
- [`starter/start.sh`](starter/start.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/idemp.py` alongside the lesson.
2. On a machine that has what it needs, the lesson ran it with:

   ```sh
   bash setup.sh >/dev/null 2>&1
   docker run --rm --network m02l05-net -v "$PWD:/app" m02l05-client python idemp.py
   ```

## How to check

**Read along.** It needs Docker (or another container engine), which the lab sandbox does not have. Run it on a machine with Docker installed.

There is nothing to check: `./check m02l05-05` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m02l05) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
