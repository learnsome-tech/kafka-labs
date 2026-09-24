# Exercises — Dual Writes And Why They Lose Data

Lesson `m06l01` · [Watch](https://learnsome.tech/courses/kafka-course/watch?lesson=m06l01)

## Exercise 1: Observe and extend the failure modes

1. Add a sleep between the insert and the Kafka send and note the inconsistency window.
2. Write a consumer that reads from m06l01-events and tries to load the matching row from orders.
3. Catch the Kafka error in db_first.py and log it; confirm the orphaned row survives.

> **Hint**: Use docker exec m06l01-db psql -U postgres to inspect the orders table after each run; the count column shows which system is ahead.


---

© LearnSome.tech · support@iwantto.learnsome.tech
