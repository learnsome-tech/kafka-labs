# m02l03 · Acknowledgements: What Acks Means For Durability

Module 2: Producers: Keys, Batches And Acks · lesson 2.3 · Pro · [Open the lesson](https://learnsome.tech/learn/kafka-course/m02l03)

**Goal:** You can set acks on a KafkaProducer to zero, one, or all, explain what each level waits for, and describe what min-insync-replicas does when a write requires confirmation from more replicas than are currently available.

## Labs

| Lab | What it is | Check |
| --- | --- | --- |
| [m02l03-02](m02l03-02/) | Start the broker and create the topic | Checker |
| [m02l03-03](m02l03-03/) | Demonstrate all three ack levels | Checker |
| [m02l03-04](m02l03-04/) | Run the acks comparison | Checker |
| [m02l03-05](m02l03-05/) | Set min-insync-replicas and describe the partition | Checker |
| [m02l03-06](m02l03-06/) | What the error looks like when ISR is too small | Read along |

## Exercises

Open exercises from the lesson, to try on your own. They have no answer files: work them out, and use the labs above as reference.

### Observe the acks difference on delivery latency

1. Produce one hundred records with acks zero and measure how long flush takes.
2. Produce one hundred records with acks all and measure how long flush takes.
3. Print a boolean indicating whether the acks-all flush took longer than acks zero.

> **Hint:** Use time.time before and after flush and compare the elapsed values as a boolean comparison.

## Check yourself

- With acks zero, what does the producer know about the record after flush returns?
- With acks one, which node sends the acknowledgement and when?
- What does min-insync-replicas control, and which acks setting does it affect?
- What error class does kafka-python raise when min-insync-replicas cannot be met?

---

[Course README](../../README.md) · [Apache Kafka & Event Streaming on LearnSome.tech](https://learnsome.tech/courses/kafka-course)
