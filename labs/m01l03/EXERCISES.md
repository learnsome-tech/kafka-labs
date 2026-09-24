# Exercises — Topics, Partitions And Where A Record Lands

Lesson `m01l03` · [Watch](https://learnsome.tech/courses/kafka-course/watch?lesson=m01l03)

## Exercise 1: Try keyed and unkeyed produces

1. Produce three records with key k-two and consume; confirm they all land on one partition.
2. Produce one record with no key and run rpk topic describe; find which partition it went to.
3. Produce two records with k-one and two with k-two; describe and compare the high watermarks.

> **Hint**: Use rpk topic describe after each produce batch to see how the high watermarks change per partition.


---

© LearnSome.tech · support@iwantto.learnsome.tech
