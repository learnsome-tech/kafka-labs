# m04l03 · Transactions And Exactly Once Semantics

Module 4: Delivery Guarantees And Transactions · lesson 4.3 · Pro · [Open the lesson](https://learnsome.tech/learn/kafka-course/m04l03)

**Goal:** You can write a transactional Kafka producer that commits and aborts, explain what read-committed isolation means for a consumer, and describe why a read-committed consumer sees zero records from an aborted transaction.

## Labs

| Lab | What it is | Check |
| --- | --- | --- |
| [m04l03-02](m04l03-02/) | Broker and two topics ready for transaction demo | Read along |
| [m04l03-03](m04l03-03/) | Transactional producer: commit three records | Read along |
| [m04l03-04](m04l03-04/) | Read-committed consumer sees the three records | Read along |
| [m04l03-06](m04l03-06/) | Aborted transaction: read-committed sees nothing | Read along |
| [m04l03-08](m04l03-08/) | Tear down the lesson environment | Read along |

## Exercises

Open exercises from the lesson, to try on your own. They have no answer files: work them out, and use the labs above as reference.

### Explore transactional boundaries

1. Add a new transactional producer and confirm the reader sees six records total.
2. Switch abort.py from abort to commit and verify the consumer now sees three records.

> **Hint:** Each transactional id must be unique per active producer; reusing an id while a producer with that id is still alive causes the broker to fence the older one.

## Check yourself

- What is the sequence of API calls a transactional producer makes before sending its first record?
- Why does a read-committed consumer see zero records from a topic that holds only aborted transactions?
- What does the transactional ID allow the broker to do when a producer restarts with the same ID?
- What output did the abort program print, and why was the count zero rather than three?
- How does switching from abort-transaction to commit-transaction change what the consumer receives?

---

[Course README](../../README.md) · [Apache Kafka & Event Streaming on LearnSome.tech](https://learnsome.tech/courses/kafka-course)
