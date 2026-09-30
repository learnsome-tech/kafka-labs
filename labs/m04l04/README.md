# m04l04 · Poison Messages And Dead Letter Topics

Module 4: Delivery Guarantees And Transactions · lesson 4.4 · Pro · [Open the lesson](https://learnsome.tech/learn/kafka-course/m04l04)

**Goal:** You can implement a consumer that routes malformed records to a dead letter topic with an error header, and explain why a single poison message blocks an entire partition if the exception is not caught.

## Labs

| Lab | What it is | Check |
| --- | --- | --- |
| [m04l04-02](m04l04-02/) | Broker, main topic, and dead letter topic ready | Read along |
| [m04l04-03](m04l04-03/) | Producer: four records, one carrying invalid JSON | Read along |
| [m04l04-05](m04l04-05/) | DLQ consumer: catch failures and route them forward | Read along |
| [m04l04-06](m04l04-06/) | Inspect the dead letter topic | Read along |
| [m04l04-08](m04l04-08/) | Tear down the lesson environment | Read along |

## Exercises

Open exercises from the lesson, to try on your own. They have no answer files: work them out, and use the labs above as reference.

### Add a second malformed record and inspect results

1. Add a fifth record with a truncated JSON value and re-run the full pipeline.
2. Read the dead letter topic and confirm both failures show distinct error messages.
3. Add a header carrying the source topic name to the dead letter record.

> **Hint:** Each call to producer send accepts a headers argument as a list of pairs where the key is a string and the value is bytes.

## Check yourself

- Why does a single malformed record block the entire partition when the consumer throws without catching?
- What does the dead letter consumer do immediately after routing a record to the dead letter topic?
- What information does the error header in the dead letter record carry?
- Why is the original value forwarded unchanged rather than replaced with an error summary?

---

[Course README](../../README.md) · [Apache Kafka & Event Streaming on LearnSome.tech](https://learnsome.tech/courses/kafka-course)
