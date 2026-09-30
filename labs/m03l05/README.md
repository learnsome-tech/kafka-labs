# m03l05 · At Most Once, At Least Once

Module 3: Consumers And Consumer Groups · lesson 3.5 · Pro · [Open the lesson](https://learnsome.tech/learn/kafka-course/m03l05)

**Goal:** You can implement at-least-once and at-most-once consumers, simulate a crash mid-batch, and explain which records are reprocessed or lost in each scenario.

## Labs

| Lab | What it is | Check |
| --- | --- | --- |
| [m03l05-02](m03l05-02/) | Start the broker and network | Read along |
| [m03l05-03](m03l05-03/) | Create the topic and produce six records | Read along |
| [m03l05-04](m03l05-04/) | Write the at-least-once consumer | Read along |
| [m03l05-05](m03l05-05/) | Simulate the crash mid-batch | Read along |
| [m03l05-06](m03l05-06/) | Restart after the crash, observe the duplicate | Read along |
| [m03l05-07](m03l05-07/) | Write and run the at-most-once consumer | Read along |
| [m03l05-09](m03l05-09/) | Remove the broker and network | Read along |

## Exercises

Open exercises from the lesson, to try on your own. They have no answer files: work them out, and use the labs above as reference.

### Try it yourself

1. Set the crash offset to four, run the crash scenario, then rerun and count the duplicates.
2. Add a crash to amo.py after committing offset three and verify that record is absent on rerun.
3. Explain what idempotent processing means and why it makes at-least-once delivery safe.

> **Hint:** For at-least-once, the duplicate set is all records from offset zero up to and including the last offset processed before the crash. For at-most-once, the lost records are those whose offsets were committed before the crash reached the processing step.

## Check yourself

- In at-least-once delivery, why are records reprocessed after a crash?
- In at-most-once delivery, why are records lost after a crash?
- What is the difference between the committed offset and the current position inside the poll loop?
- If the crash in alo.py happened at offset four instead of offset two, which records would be processed twice?
- What property must processing have for at-least-once delivery to be safe in practice?

---

[Course README](../../README.md) · [Apache Kafka & Event Streaming on LearnSome.tech](https://learnsome.tech/courses/kafka-course)
