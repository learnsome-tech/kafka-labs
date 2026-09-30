# m06l04 · Log Compaction: A Topic As A Table

Module 6: Event-Driven: Outbox, CDC, Compaction · lesson 6.4 · Pro · [Open the lesson](https://learnsome.tech/learn/kafka-course/m06l04)

**Goal:** You can create a compacted Kafka topic, produce multiple updates for the same key, fold the full log into a key-value table in Python, and explain why compaction converges the log to the same result over time.

## Labs

| Lab | What it is | Check |
| --- | --- | --- |
| [m06l04-02](m06l04-02/) | Create a compacted topic and build the client | Checker |
| [m06l04-03](m06l04-03/) | Produce six price updates across three keys | Checker |
| [m06l04-04](m06l04-04/) | Read the full log before compaction | Checker |
| [m06l04-05](m06l04-05/) | Fold the log into a key-value table in Python | Checker |
| [m06l04-06](m06l04-06/) | Inspect the compaction configuration | Checker |
| [m06l04-08](m06l04-08/) | Remove the broker and network | Checker |

## Exercises

Open exercises from the lesson, to try on your own. They have no answer files: work them out, and use the labs above as reference.

### Update keys and observe the table view

1. Produce two more apple price updates and re-run fold-prices to see the new final price.
2. Add a new key and re-run the fold; confirm it appears in the sorted output.
3. Describe the topic with the partition flag and note the high watermark after all produces.

> **Hint:** The fold program always reads from offset zero so it sees the full history; the final dictionary entry for each key always holds the last value regardless of how many updates were produced.

## Check yourself

- What does the cleanup policy compact setting change about how the broker handles old records?
- Why does reading from offset zero on a compacted topic still give you the current state for every key?
- What does the Python fold program do with multiple records that share the same key?
- What does the min cleanable dirty ratio control about when compaction runs?
- How is a compacted topic different from a normal Kafka topic in terms of what consumers can read?

---

[Course README](../../README.md) · [Apache Kafka & Event Streaming on LearnSome.tech](https://learnsome.tech/courses/kafka-course)
