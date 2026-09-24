# Exercises — Retries With Backoff Topics

Lesson `m04l05` · [Watch](https://learnsome.tech/courses/kafka-course/watch?lesson=m04l05)

## Exercise 1: Extend the pipeline to three retry tiers

1. Add m04l05-retry-three to the tiers list before the dead letter queue.
2. Re-run and confirm the record lands in the dead letter queue at attempt four.
3. Modify the router to succeed at tier two and verify the dead letter stays empty.

> **Hint**: To stop successfully at a tier, skip the prod.send call for that message so the record does not advance; the dead letter queue then receives nothing.


---

© LearnSome.tech · support@iwantto.learnsome.tech
