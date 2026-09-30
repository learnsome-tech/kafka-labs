# m01l01 · Why A Log And Not A Queue

Module 1: The Log: Topics, Partitions And Offsets · lesson 1.1 · Free · [Open the lesson](https://learnsome.tech/learn/kafka-course/m01l01)

**Goal:** You can explain why Kafka uses an append-only log rather than a delete-on-read queue, produce records to a topic, and consume them independently from two separate sessions.

## Labs

| Lab | What it is | Check |
| --- | --- | --- |
| [m01l01-02](m01l01-02/) | Start a network and broker | Checker |
| [m01l01-03](m01l01-03/) | Create a topic and produce three records | Checker |
| [m01l01-04](m01l01-04/) | A second reader sees the same records | Checker |
| [m01l01-06](m01l01-06/) | Remove the broker and network | Checker |

## Exercises

Open exercises from the lesson, to try on your own. They have no answer files: work them out, and use the labs above as reference.

### Try it yourself

1. Produce five records and consume from offset zero; count them and confirm all five appear.
2. Start fresh, produce three records, then consume from offset one; confirm you get two back.
3. Change the format string to show only the value with no offset column; verify order is kept.

> **Hint:** Use -o 0 with rpk topic consume to start reading from the beginning of the partition.

## Check yourself

- What happens to a record in a traditional message queue after a consumer reads it?
- Why can two consumers read the same record from a Kafka topic without interfering?
- What does the offset of a record tell you about it?
- What removes records from a Kafka log if reading does not?
- Which module covers consumer groups and how they use offsets to coordinate reading?

---

[Course README](../../README.md) · [Apache Kafka & Event Streaming on LearnSome.tech](https://learnsome.tech/courses/kafka-course)
