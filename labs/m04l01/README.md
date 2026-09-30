# m04l01 · Duplicates Are The Default

Module 4: Delivery Guarantees And Transactions · lesson 4.1 · Pro · [Open the lesson](https://learnsome.tech/learn/kafka-course/m04l01)

**Goal:** You can name the three events that produce a duplicate in a Kafka pipeline and explain why at-least-once delivery is the deliberate default.

## Labs

| Lab | What it is | Check |
| --- | --- | --- |
| [m04l01-02](m04l01-02/) | Broker up, topic created | Read along |
| [m04l01-04](m04l01-04/) | Producer: each event sent twice | Read along |
| [m04l01-05](m04l01-05/) | Consumer: count per key reveals the extras | Read along |
| [m04l01-08](m04l01-08/) | Tear down the lesson environment | Read along |

## Exercises

Open exercises from the lesson, to try on your own. They have no answer files: work them out, and use the labs above as reference.

### Extend the producer and verify counts

1. Add a fourth key to the producer and confirm it also appears twice in the consumer output.
2. Change the consumer group id and re-run it from offset zero to verify the counts reset cleanly.
3. Describe the topic with rpk and check that the high watermark equals eight after your change.

> **Hint:** The rpk topic describe command prints the partition high watermark, which equals the total number of records written to a single-partition topic.

## Check yourself

- What happens when a broker acknowledgement is lost and the producer has a non-zero retries setting?
- Why does a consumer restart from an older offset instead of continuing from where it stopped processing?
- What count does the consumer show for each order key when the producer sends each event twice?
- Name one downstream action that is safe when a record arrives twice and one that is not.

---

[Course README](../../README.md) · [Apache Kafka & Event Streaming on LearnSome.tech](https://learnsome.tech/courses/kafka-course)
