# m02l01 · A Producer In Python

Module 2: Producers: Keys, Batches And Acks · lesson 2.1 · Pro · [Open the lesson](https://learnsome.tech/learn/kafka-course/m02l01)

**Goal:** You can write a KafkaProducer that sends records to a topic, block on the returned future, and read the partition and offset from the metadata the broker returns.

## Labs

| Lab | What it is | Check |
| --- | --- | --- |
| [m02l01-02](m02l01-02/) | Start the broker and create the topic | Checker |
| [m02l01-03](m02l01-03/) | Write the producer and build the image | Checker |
| [m02l01-04](m02l01-04/) | Send ten records and read the offsets | Checker |
| [m02l01-05](m02l01-05/) | Confirm delivery with rpk, then clean up | Checker |

## Exercises

Open exercises from the lesson, to try on your own. They have no answer files: work them out, and use the labs above as reference.

### Extend the producer

1. Change the value format to use the index as an English word like zero, one, up to nine.
2. Add a second topic with a different suffix and produce five records to it.
3. After both sends complete, print the combined count of acknowledged records.

> **Hint:** Create two producer instances or reuse one; call get on each future to count only acknowledged records.

## Check yourself

- What does calling get on the future returned by send actually wait for?
- Which two fields in RecordMetadata tell you where the record landed?
- Why did all ten records land in partition zero in this lesson?
- What does the bootstrap-servers argument do after the initial connection succeeds?

---

[Course README](../../README.md) · [Apache Kafka & Event Streaming on LearnSome.tech](https://learnsome.tech/courses/kafka-course)
