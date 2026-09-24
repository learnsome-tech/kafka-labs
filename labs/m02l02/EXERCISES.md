# Exercises — Keys And Ordering Per Partition

Lesson `m02l02` · [Watch](https://learnsome.tech/courses/kafka-course/watch?lesson=m02l02)

## Exercise 1: Change the partition count and observe the shift

1. Create the same topic with three partitions and reproduce the six sends with the same keys.
2. Compare which partition each key lands on with three partitions versus two.
3. Add a third key and confirm it routes to a consistent partition across repeated runs.

> **Hint**: Partition count affects the hash modulo; the same key may land on a different partition when the count changes.


---

© LearnSome.tech · support@iwantto.learnsome.tech
