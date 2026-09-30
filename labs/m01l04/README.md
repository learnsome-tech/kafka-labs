# m01l04 · Offsets: Position, Not Acknowledgement

Module 1: The Log: Topics, Partitions And Offsets · lesson 1.4 · Free · [Open the lesson](https://learnsome.tech/learn/kafka-course/m01l04)

**Goal:** You can consume a topic from a specific offset, demonstrate that two independent consumers see the same records at the same offsets, and explain why the offset belongs to the record and not to the reader.

## Labs

| Lab | What it is | Check |
| --- | --- | --- |
| [m01l04-02](m01l04-02/) | Start a network and broker | Checker |
| [m01l04-03](m01l04-03/) | Produce five records | Checker |
| [m01l04-04](m01l04-04/) | Consumer A reads all five from offset zero | Checker |
| [m01l04-05](m01l04-05/) | Consumer B reads the same five records | Checker |
| [m01l04-06](m01l04-06/) | Read from the middle of the log | Checker |
| [m01l04-07](m01l04-07/) | Remove the broker and network | Checker |

## Exercises

Open exercises from the lesson, to try on your own. They have no answer files: work them out, and use the labs above as reference.

### Position the consumer yourself

1. Produce five records, consume from offset two with num three, and confirm you get three records.
2. Consume from offset zero with num two; confirm the first two records appear and then you exit.
3. Run the consume command from offset zero twice in separate shells; verify the output matches.

> **Hint:** The -o flag sets the starting offset and --num controls how many records to read before exiting.

## Check yourself

- What does the offset of a record actually mean in Kafka?
- Why can two consumers read the same offset in a partition without interfering?
- What does consuming starting at offset three from a partition with five records produce?
- Does reading a record from a Kafka partition change what is stored at that offset?
- How would a consumer use the offset to resume correctly after a crash?

---

[Course README](../../README.md) · [Apache Kafka & Event Streaming on LearnSome.tech](https://learnsome.tech/courses/kafka-course)
