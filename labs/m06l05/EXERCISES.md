# Exercises — Materialised Views From A Stream

Lesson `m06l05` · [Watch](https://learnsome.tech/courses/kafka-course/watch?lesson=m06l05)

## Exercise 1: Extend and rebuild the materialised view

1. Add two more orders for an existing customer and rebuild the view; verify the total increases.
2. Add a fourth customer to the producer and rebuild; confirm the new customer appears sorted.
3. Modify the fold to compute the average order value per customer and observe the output.

> **Hint**: Each rebuild uses a new consumer group name so it always reads from offset zero regardless of what earlier runs consumed.


---

© LearnSome.tech · support@iwantto.learnsome.tech
