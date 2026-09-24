# Exercises — Transactions And Exactly Once Semantics

Lesson `m04l03` · [Watch](https://learnsome.tech/courses/kafka-course/watch?lesson=m04l03)

## Exercise 1: Explore transactional boundaries

1. Add a new transactional producer and confirm the reader sees six records total.
2. Switch abort.py from abort to commit and verify the consumer now sees three records.

> **Hint**: Each transactional id must be unique per active producer; reusing an id while a producer with that id is still alive causes the broker to fence the older one.


---

© LearnSome.tech · support@iwantto.learnsome.tech
