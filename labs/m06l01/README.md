# m06l01 · Dual Writes And Why They Lose Data

Module 6: Event-Driven: Outbox, CDC, Compaction · lesson 6.1 · Pro · [Open the lesson](https://learnsome.tech/learn/kafka-course/m06l01)

**Goal:** You can explain why writing to a database and a Kafka topic in sequence is not atomic, demonstrate both failure modes with runnable programs, and describe why neither write order eliminates the consistency risk.

## Labs

| Lab | What it is | Check |
| --- | --- | --- |
| [m06l01-02](m06l01-02/) | Start broker, database and build the client image | Checker |
| [m06l01-03](m06l01-03/) | Scenario one: database commits, Kafka never receives | Checker |
| [m06l01-04](m06l01-04/) | Verify state: database has the row, topic has nothing | Checker |
| [m06l01-05](m06l01-05/) | Scenario two: Kafka publishes, database never receives | Checker |
| [m06l01-06](m06l01-06/) | Verify state: topic has the event, database has nothing | Checker |
| [m06l01-08](m06l01-08/) | Remove the broker, database and network | Checker |

## Exercises

Open exercises from the lesson, to try on your own. They have no answer files: work them out, and use the labs above as reference.

### Observe and extend the failure modes

1. Add a sleep between the insert and the Kafka send and note the inconsistency window.
2. Write a consumer that reads from m06l01-events and tries to load the matching row from orders.
3. Catch the Kafka error in db_first.py and log it; confirm the orphaned row survives.

> **Hint:** Use docker exec m06l01-db psql -U postgres to inspect the orders table after each run; the count column shows which system is ahead.

## Check yourself

- Why does committing the database insert before calling the Kafka client still risk losing an event?
- What is a phantom event, and when does it occur in a dual write?
- What does a topic high watermark of zero confirm about the state of that topic?
- Why does reversing the order of the two writes not eliminate the consistency risk?
- What does the orders table count show after the Kafka-first scenario with a simulated database failure?

---

[Course README](../../README.md) · [Apache Kafka & Event Streaming on LearnSome.tech](https://learnsome.tech/courses/kafka-course)
