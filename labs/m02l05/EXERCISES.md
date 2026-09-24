# Exercises — Idempotent Producers And Retries

Lesson `m02l05` · [Watch](https://learnsome.tech/courses/kafka-course/watch?lesson=m02l05)

## Exercise 1: Measure the idempotent registration step

1. Enable idempotence and send one record; print the offset.
2. Disable idempotence and send one record to a different topic; print the offset.
3. Print a boolean indicating whether both offsets are zero.

> **Hint**: Both topics are fresh so both offsets should be zero; the interesting difference is the producer configuration, not the offset value.


---

© LearnSome.tech · support@iwantto.learnsome.tech
