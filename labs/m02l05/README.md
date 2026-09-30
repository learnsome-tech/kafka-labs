# m02l05 · Idempotent Producers And Retries

Module 2: Producers: Keys, Batches And Acks · lesson 2.5 · Pro · [Open the lesson](https://learnsome.tech/learn/kafka-course/m02l05)

**Goal:** You can configure enable-idempotence on a KafkaProducer, explain what sequence numbers the broker uses to detect duplicate produce requests, and demonstrate that without idempotence a simulated retry produces duplicate records.

## Labs

| Lab | What it is | Check |
| --- | --- | --- |
| [m02l05-02](m02l05-02/) | Start the broker and create both topics | Read along |
| [m02l05-03](m02l05-03/) | Write the non-idempotent duplicate producer | Read along |
| [m02l05-04](m02l05-04/) | Send the duplicates and observe the offsets | Read along |
| [m02l05-05](m02l05-05/) | Configure and run the idempotent producer | Read along |
| [m02l05-06](m02l05-06/) | Read the duplicate topic to confirm, then clean up | Read along |

## Exercises

Open exercises from the lesson, to try on your own. They have no answer files: work them out, and use the labs above as reference.

### Measure the idempotent registration step

1. Enable idempotence and send one record; print the offset.
2. Disable idempotence and send one record to a different topic; print the offset.
3. Print a boolean indicating whether both offsets are zero.

> **Hint:** Both topics are fresh so both offsets should be zero; the interesting difference is the producer configuration, not the offset value.

## Check yourself

- Why does a non-idempotent producer create duplicates when it retries after a lost acknowledgement?
- What two values does the broker use to detect a duplicate produce request?
- Why must max-in-flight-requests-per-connection be one when using kafka-python idempotence?
- Does idempotence protect against two separate producer instances sending the same logical record?

---

[Course README](../../README.md) · [Apache Kafka & Event Streaming on LearnSome.tech](https://learnsome.tech/courses/kafka-course)
