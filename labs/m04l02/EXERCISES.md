# Exercises — Idempotent Consumers And Deduplication Keys

Lesson `m04l02` · [Watch](https://learnsome.tech/courses/kafka-course/watch?lesson=m04l02)

## Exercise 1: Extend the deduplication consumer

1. Add a fifth unique event id to the producer and re-run the dedup consumer.
2. Run the dedup consumer a second time and confirm it skips all processed records.
3. Print each skipped identifier so you can see exactly which records were filtered.

> **Hint**: On the second run the consumer starts from the earliest offset, but the seen file holds all identifiers from the first run, so all records are skipped.


---

© LearnSome.tech · support@iwantto.learnsome.tech
