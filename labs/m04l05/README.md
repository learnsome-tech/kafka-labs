# m04l05 · Retries With Backoff Topics

Module 4: Delivery Guarantees And Transactions · lesson 4.5 · Pro · [Open the lesson](https://learnsome.tech/learn/kafka-course/m04l05)

**Goal:** You can implement a retry-topic pattern that routes a failing record through numbered tiers before landing it in a dead letter queue, and explain how an attempt counter in the value makes routing deterministic.

## Labs

| Lab | What it is | Check |
| --- | --- | --- |
| [m04l05-02](m04l05-02/) | Broker and four topics for the retry pipeline | Checker |
| [m04l05-04](m04l05-04/) | Produce one record to start the pipeline | Checker |
| [m04l05-05](m04l05-05/) | Retry router: record flows through all three tiers | Checker |
| [m04l05-06](m04l05-06/) | Confirm the dead letter queue holds the final record | Checker |
| [m04l05-08](m04l05-08/) | Tear down the lesson environment | Checker |

## Exercises

Open exercises from the lesson, to try on your own. They have no answer files: work them out, and use the labs above as reference.

### Extend the pipeline to three retry tiers

1. Add m04l05-retry-three to the tiers list before the dead letter queue.
2. Re-run and confirm the record lands in the dead letter queue at attempt four.
3. Modify the router to succeed at tier two and verify the dead letter stays empty.

> **Hint:** To stop successfully at a tier, skip the prod.send call for that message so the record does not advance; the dead letter queue then receives nothing.

## Check yourself

- Why does the lesson use an attempt counter in the value rather than a wall-clock timestamp to track retries?
- What value does the attempt counter hold when the record arrives in the dead letter queue?
- What does the dead letter check program print, and how does it confirm the routing was correct?
- How would you modify the router so that a record succeeds at the second tier instead of advancing?
- What does a dead letter queue that keeps filling up tell you about the business logic at each tier?

---

[Course README](../../README.md) · [Apache Kafka & Event Streaming on LearnSome.tech](https://learnsome.tech/courses/kafka-course)
