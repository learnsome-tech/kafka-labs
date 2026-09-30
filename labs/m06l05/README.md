# m06l05 · Materialised Views From A Stream

Module 6: Event-Driven: Outbox, CDC, Compaction · lesson 6.5 · Pro · [Open the lesson](https://learnsome.tech/learn/kafka-course/m06l05)

**Goal:** You can produce a stream of order events, write a consumer that folds the stream into per-customer totals and prints a sorted table, and rebuild the same view from offset zero using a fresh consumer group to demonstrate that the stream is the source of truth.

## Labs

| Lab | What it is | Check |
| --- | --- | --- |
| [m06l05-02](m06l05-02/) | Start the broker and create the orders topic | Read along |
| [m06l05-03](m06l05-03/) | Produce six orders across three customers | Read along |
| [m06l05-04](m06l05-04/) | Fold the stream into per-customer totals | Read along |
| [m06l05-06](m06l05-06/) | Rebuild the view from offset zero with a new group | Read along |
| [m06l05-08](m06l05-08/) | Remove the broker and network | Read along |

## Exercises

Open exercises from the lesson, to try on your own. They have no answer files: work them out, and use the labs above as reference.

### Extend and rebuild the materialised view

1. Add two more orders for an existing customer and rebuild the view; verify the total increases.
2. Add a fourth customer to the producer and rebuild; confirm the new customer appears sorted.
3. Modify the fold to compute the average order value per customer and observe the output.

> **Hint:** Each rebuild uses a new consumer group name so it always reads from offset zero regardless of what earlier runs consumed.

## Check yourself

- What does folding a stream from offset zero produce, and why is that result the same every time?
- Why does using a different consumer group name cause the rebuild consumer to start from offset zero?
- What is a state store, and how does a changelog topic allow it to survive a restart?
- What output does the rebuild program print compared with the first totals program, and why?
- How does the stream-table duality argument justify replaying a Kafka topic to recover a lost view?

---

[Course README](../../README.md) · [Apache Kafka & Event Streaming on LearnSome.tech](https://learnsome.tech/courses/kafka-course)
