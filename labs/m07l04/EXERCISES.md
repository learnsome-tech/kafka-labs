# Exercises — Watching Lag And Sizing Partitions

Lesson `m07l04` · [Watch](https://learnsome.tech/courses/kafka-course/watch?lesson=m07l04)

## Exercise 1: Practice: produce ahead and measure the gap

1. Produce ten records to partition zero, then consume four with a consumer group and commit.
2. Run rpk group describe and confirm the reported total lag matches the number of unread records.
3. Add two partitions to the topic, then explain why records already written are not redistributed.

> **Hint**: Explicit partition assignment in the producer keeps the output deterministic; use enable-auto-commit False and an explicit commit in the consumer so the offset is saved before the program exits.


---

© LearnSome.tech · support@iwantto.learnsome.tech
