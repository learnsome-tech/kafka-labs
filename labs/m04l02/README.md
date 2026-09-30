# m04l02 · Idempotent Consumers And Deduplication Keys

Module 4: Delivery Guarantees And Transactions · lesson 4.2 · Pro · [Open the lesson](https://learnsome.tech/learn/kafka-course/m04l02)

**Goal:** You can implement a consumer that skips duplicate events using an event identifier in the record value, and explain when a deduplication table is necessary versus when natural idempotence is sufficient.

## Labs

| Lab | What it is | Check |
| --- | --- | --- |
| [m04l02-02](m04l02-02/) | Broker up, topic ready for deduplication demo | Read along |
| [m04l02-03](m04l02-03/) | Producer: five records with two duplicate event ids | Read along |
| [m04l02-05](m04l02-05/) | Deduplicating consumer with a persistent seen-set | Read along |
| [m04l02-08](m04l02-08/) | Tear down the lesson environment | Read along |

## Exercises

Open exercises from the lesson, to try on your own. They have no answer files: work them out, and use the labs above as reference.

### Extend the deduplication consumer

1. Add a fifth unique event id to the producer and re-run the dedup consumer.
2. Run the dedup consumer a second time and confirm it skips all processed records.
3. Print each skipped identifier so you can see exactly which records were filtered.

> **Hint:** On the second run the consumer starts from the earliest offset, but the seen file holds all identifiers from the first run, so all records are skipped.

## Check yourself

- What field in the record value does the deduplication consumer use to detect a duplicate?
- Why is a database upsert keyed by event identifier naturally idempotent?
- What does the consumer print when all five records have been seen before on a second run?
- What breaks if two instances of the file-backed consumer run in parallel?
- When is a shared database deduplication table preferable to a file-backed seen-set?

---

[Course README](../../README.md) · [Apache Kafka & Event Streaming on LearnSome.tech](https://learnsome.tech/courses/kafka-course)
