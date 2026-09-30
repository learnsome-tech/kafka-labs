# m02l02 · Keys And Ordering Per Partition

Module 2: Producers: Keys, Batches And Acks · lesson 2.2 · Pro · [Open the lesson](https://learnsome.tech/learn/kafka-course/m02l02)

**Goal:** You can produce records with keys, explain why the same key always lands in the same partition, and show that ordering is guaranteed within a partition but not across partitions.

## Labs

| Lab | What it is | Check |
| --- | --- | --- |
| [m02l02-02](m02l02-02/) | Start the broker with a two-partition topic | Checker |
| [m02l02-03](m02l02-03/) | Write the keyed producer and build the image | Checker |
| [m02l02-04](m02l02-04/) | Send six interleaved records and see routing | Checker |
| [m02l02-05](m02l02-05/) | The hash partitioner and custom routing | Read along |
| [m02l02-06](m02l02-06/) | Read records by partition, then clean up | Checker |

## Exercises

Open exercises from the lesson, to try on your own. They have no answer files: work them out, and use the labs above as reference.

### Change the partition count and observe the shift

1. Create the same topic with three partitions and reproduce the six sends with the same keys.
2. Compare which partition each key lands on with three partitions versus two.
3. Add a third key and confirm it routes to a consistent partition across repeated runs.

> **Hint:** Partition count affects the hash modulo; the same key may land on a different partition when the count changes.

## Check yourself

- Which algorithm does the default kafka-python partitioner use to hash a key?
- If you send records with the same key to a topic with five partitions, how many partitions will those records appear in?
- Why does changing a topic's partition count break key-to-partition stability?
- What strategy does the producer use for records that have no key?

---

[Course README](../../README.md) · [Apache Kafka & Event Streaming on LearnSome.tech](https://learnsome.tech/courses/kafka-course)
