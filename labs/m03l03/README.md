# m03l03 · Committing Offsets: Auto, Manual And Lag

Module 3: Consumers And Consumer Groups · lesson 3.3 · Pro · [Open the lesson](https://learnsome.tech/learn/kafka-course/m03l03)

**Goal:** You can configure a KafkaConsumer to commit offsets manually, observe the lag a consumer group carries before committing, and confirm that a second run resumes from the committed position.

## Labs

| Lab | What it is | Check |
| --- | --- | --- |
| [m03l03-02](m03l03-02/) | Start the broker and network | Read along |
| [m03l03-03](m03l03-03/) | Create the topic and produce four records | Read along |
| [m03l03-04](m03l03-04/) | Write the consumer with manual commit control | Read along |
| [m03l03-05](m03l03-05/) | Read without committing, observe the gap | Read along |
| [m03l03-06](m03l03-06/) | Read and commit, confirm the position is saved | Read along |
| [m03l03-07](m03l03-07/) | Inspect the group and clean up | Read along |

## Exercises

Open exercises from the lesson, to try on your own. They have no answer files: work them out, and use the labs above as reference.

### Try it yourself

1. Run the consumer without the commit flag twice and verify both runs read all four records.
2. Run with the commit flag, then run without it: observe whether the second run finds records.
3. Produce two more records after committing and check the lag in rpk group describe.

> **Hint:** The committed offset is stored per partition under the group name. Without a commit, the position never advances on the broker, so every run starts from where auto-offset-reset or the last commit dictates. With four records committed and two more added, the lag becomes two.

## Check yourself

- What does setting enable-auto-commit to false change about when offsets are written to the broker?
- After calling consumer.commit at offset three, what value does the broker store as the committed offset for that partition?
- Why does a consumer with no committed offset read all records again on the next run, even though it read them on the previous run?
- What is lag and which two values is it calculated from?
- If you run the consumer twice without committing and then once with committing, how many records does a fourth run without committing read?

---

[Course README](../../README.md) · [Apache Kafka & Event Streaming on LearnSome.tech](https://learnsome.tech/courses/kafka-course)
