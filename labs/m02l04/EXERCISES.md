# Exercises — Batching, Linger And Throughput

Lesson `m02l04` · [Watch](https://learnsome.tech/courses/kafka-course/watch?lesson=m02l04)

## Exercise 1: Tune linger and measure the effect

1. Send one hundred records with linger-ms set to zero and time the flush call.
2. Send one hundred records with linger-ms set to one hundred and time the flush call.
3. Print whether the one-hundred-ms version was faster overall than the zero version.

> **Hint**: Use time.time before and after flush; print the comparison as a boolean, not as elapsed seconds.


---

© LearnSome.tech · support@iwantto.learnsome.tech
