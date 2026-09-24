# Exercises — Duplicates Are The Default

Lesson `m04l01` · [Watch](https://learnsome.tech/courses/kafka-course/watch?lesson=m04l01)

## Exercise 1: Extend the producer and verify counts

1. Add a fourth key to the producer and confirm it also appears twice in the consumer output.
2. Change the consumer group id and re-run it from offset zero to verify the counts reset cleanly.
3. Describe the topic with rpk and check that the high watermark equals eight after your change.

> **Hint**: The rpk topic describe command prints the partition high watermark, which equals the total number of records written to a single-partition topic.


---

© LearnSome.tech · support@iwantto.learnsome.tech
