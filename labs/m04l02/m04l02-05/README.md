# m04l02-05 · Deduplicating consumer with a persistent seen-set

**Lesson:** [Idempotent Consumers And Deduplication Keys](https://learnsome.tech/learn/kafka-course/m04l02) (lesson 4.2, module 4: Delivery Guarantees And Transactions) · Pro  
**Check:** Read along

## Goal

You can implement a consumer that skips duplicate events using an event identifier in the record value, and explain when a deduplication table is necessary versus when natural idempotence is sufficient.

In the lesson: The consumer loads a seen-set from a file at startup, then reads the topic from the earliest offset. For each record, it extracts the event identifier from the value and checks the set. If the identifier is already present, the record is counted as skipped but no downstream action is taken. At the end, the updated set is written back to the same file so the next run starts with the same knowledge. The result confirms that the consumer processed three and skipped two, which are the two identifiers it found already in the set. The file persists across restarts because it is mounted from the host working directory through the volume flag.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/dedup.py`](starter/dedup.py): the listing from the lesson
- [`starter/producer.py`](starter/producer.py)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/setup.sh`](starter/setup.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/dedup.py` alongside the lesson.
2. On a machine that has what it needs, the lesson ran it with:

   ```sh
   bash setup.sh >/dev/null 2>&1
   docker run --rm --network m04l02-net -v "$PWD:/app" m04l02-client python dedup.py
   ```

## How to check

**Read along.** It needs Docker (or another container engine), which the lab sandbox does not have. Run it on a machine with Docker installed.

There is nothing to check: `./check m04l02-05` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m04l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
