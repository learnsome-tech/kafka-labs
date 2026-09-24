# Exercises — At Most Once, At Least Once

Lesson `m03l05` · [Watch](https://learnsome.tech/courses/kafka-course/watch?lesson=m03l05)

## Exercise 1: Try it yourself

1. Set the crash offset to four, run the crash scenario, then rerun and count the duplicates.
2. Add a crash to amo.py after committing offset three and verify that record is absent on rerun.
3. Explain what idempotent processing means and why it makes at-least-once delivery safe.

> **Hint**: For at-least-once, the duplicate set is all records from offset zero up to and including the last offset processed before the crash. For at-most-once, the lost records are those whose offsets were committed before the crash reached the processing step.


---

© LearnSome.tech · support@iwantto.learnsome.tech
