# m06l03 · Change Data Capture In Principle

Module 6: Event-Driven: Outbox, CDC, Compaction · lesson 6.3 · Pro · [Open the lesson](https://learnsome.tech/learn/kafka-course/m06l03)

**Goal:** You can start a Postgres instance with logical replication enabled, create a replication slot using the test decoding plugin, and read the change stream produced by insert and update statements to explain how a connector such as Debezium turns those changes into Kafka events.

## Labs

| Lab | What it is | Check |
| --- | --- | --- |
| [m06l03-02](m06l03-02/) | Start Postgres with logical replication and create a slot | Checker |
| [m06l03-03](m06l03-03/) | Insert a product row and then update it | Checker |
| [m06l03-04](m06l03-04/) | Read the change stream from the replication slot | Checker |
| [m06l03-07](m06l03-07/) | Remove the database and network | Checker |

## Exercises

Open exercises from the lesson, to try on your own. They have no answer files: work them out, and use the labs above as reference.

### Explore the change stream

1. Delete the row you updated and read the slot again; find the delete entry in the change stream.
2. Insert three more rows and read the slot; confirm each appears as a separate insert line.
3. Restart the database container and confirm the replication slot survives the restart.

> **Hint:** Use pg_replication_slots to inspect the slot state, and remember that consuming the slot advances its position so each read returns only new changes.

## Check yourself

- What Postgres configuration flag enables the logical decoding interface?
- What purpose does a replication slot serve when a connector restarts?
- Which information does the test decoding plugin include for an insert statement?
- How does a Debezium connector convert a change row into a Kafka event?
- Why does CDC capture database mutations without requiring changes to application code?

---

[Course README](../../README.md) · [Apache Kafka & Event Streaming on LearnSome.tech](https://learnsome.tech/courses/kafka-course)
