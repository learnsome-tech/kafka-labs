# m01l03 · Topics, Partitions And Where A Record Lands

Module 1: The Log: Topics, Partitions And Offsets · lesson 1.3 · Free · [Open the lesson](https://learnsome.tech/learn/kafka-course/m01l03)

**Goal:** You can create a topic with multiple partitions, produce keyed records and confirm they always land on the same partition, and explain why unkeyed records do not carry ordering guarantees.

## Labs

| Lab | What it is | Check |
| --- | --- | --- |
| [m01l03-02](m01l03-02/) | Start a network and broker | Read along |
| [m01l03-03](m01l03-03/) | Create a three-partition topic and produce keyed records | Read along |
| [m01l03-04](m01l03-04/) | Consume the keyed records | Read along |
| [m01l03-05](m01l03-05/) | Describe the topic partition layout | Read along |
| [m01l03-07](m01l03-07/) | Remove the broker and network | Read along |

## Exercises

Open exercises from the lesson, to try on your own. They have no answer files: work them out, and use the labs above as reference.

### Try keyed and unkeyed produces

1. Produce three records with key k-two and consume; confirm they all land on one partition.
2. Produce one record with no key and run rpk topic describe; find which partition it went to.
3. Produce two records with k-one and two with k-two; describe and compare the high watermarks.

> **Hint:** Use rpk topic describe after each produce batch to see how the high watermarks change per partition.

## Check yourself

- What algorithm does Kafka use by default to decide which partition a keyed record goes to?
- Why are records with the same key always ordered relative to each other when consumed?
- What does the high watermark value for a partition represent?
- What does rpk topic describe show in the partition table after producing three records to one key?
- What happens to the ordering guarantee when records are produced without a key?

---

[Course README](../../README.md) · [Apache Kafka & Event Streaming on LearnSome.tech](https://learnsome.tech/courses/kafka-course)
