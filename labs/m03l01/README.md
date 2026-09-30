# m03l01 · A Consumer In Python

Module 3: Consumers And Consumer Groups · lesson 3.1 · Pro · [Open the lesson](https://learnsome.tech/learn/kafka-course/m03l01)

**Goal:** You can write a KafkaConsumer in Python that reads from the beginning of a topic, prints partition, offset, key and value for every record, and exits automatically when the topic goes quiet.

## Labs

| Lab | What it is | Check |
| --- | --- | --- |
| [m03l01-02](m03l01-02/) | Start the broker and network | Read along |
| [m03l01-03](m03l01-03/) | Create the topic and produce three records | Read along |
| [m03l01-04](m03l01-04/) | Write the consumer program and build the image | Read along |
| [m03l01-05](m03l01-05/) | Run the consumer and read the records back | Read along |
| [m03l01-08](m03l01-08/) | Remove the broker and network | Read along |

## Exercises

Open exercises from the lesson, to try on your own. They have no answer files: work them out, and use the labs above as reference.

### Try it yourself

1. Produce two more records with a new key and run the consumer: verify the offsets advance.
2. Change the group-id and run again: confirm the new group reads from offset zero.
3. Set auto-offset-reset to latest, produce a record, then run the consumer.

> **Hint:** A committed offset is stored per partition, per group. A new group-id has no commit, so auto-offset-reset controls the starting point. After a group commits, auto-offset-reset is ignored for that partition.

## Check yourself

- What does auto-offset-reset do when the consumer group has no committed offset for a partition?
- Why does consumer-timeout-milliseconds let a consumer script exit without an interrupt?
- After running the consumer once, how many records does a second run with the same group-ID read from the same topic?
- Why must you call decode on msg.key and msg.value before printing them?
- What is the purpose of the group-ID parameter, even when only one consumer is running?

---

[Course README](../../README.md) · [Apache Kafka & Event Streaming on LearnSome.tech](https://learnsome.tech/courses/kafka-course)
