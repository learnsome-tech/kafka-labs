# m02l04 · Batching, Linger And Throughput

Module 2: Producers: Keys, Batches And Acks · lesson 2.4 · Pro · [Open the lesson](https://learnsome.tech/learn/kafka-course/m02l04)

**Goal:** You can configure batch-size, linger-ms, and compression-type on a KafkaProducer and explain what each setting trades against to increase throughput.

## Labs

| Lab | What it is | Check |
| --- | --- | --- |
| [m02l04-02](m02l04-02/) | Start the broker and create the topic | Read along |
| [m02l04-03](m02l04-03/) | No-batch producer with batch-size one | Read along |
| [m02l04-04](m02l04-04/) | Run the no-batch producer | Read along |
| [m02l04-05](m02l04-05/) | Batched producer with gzip compression | Read along |
| [m02l04-06](m02l04-06/) | Verify record count and clean up | Read along |

## Exercises

Open exercises from the lesson, to try on your own. They have no answer files: work them out, and use the labs above as reference.

### Tune linger and measure the effect

1. Send one hundred records with linger-ms set to zero and time the flush call.
2. Send one hundred records with linger-ms set to one hundred and time the flush call.
3. Print whether the one-hundred-ms version was faster overall than the zero version.

> **Hint:** Use time.time before and after flush; print the comparison as a boolean, not as elapsed seconds.

## Check yourself

- What does batch-size control and what happens when a batch reaches that limit?
- Why does a nonzero linger-ms value increase throughput for high-rate producers?
- Why does compression achieve better ratios on batches than on individual records?
- What trade-off does increasing linger-ms impose on individual record latency?
- After both producers ran, why was the high-watermark exactly twenty?

---

[Course README](../../README.md) · [Apache Kafka & Event Streaming on LearnSome.tech](https://learnsome.tech/courses/kafka-course)
