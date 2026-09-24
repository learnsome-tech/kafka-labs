# Exercises — A Consumer In Python

Lesson `m03l01` · [Watch](https://learnsome.tech/courses/kafka-course/watch?lesson=m03l01)

## Exercise 1: Try it yourself

1. Produce two more records with a new key and run the consumer: verify the offsets advance.
2. Change the group-id and run again: confirm the new group reads from offset zero.
3. Set auto-offset-reset to latest, produce a record, then run the consumer.

> **Hint**: A committed offset is stored per partition, per group. A new group-id has no commit, so auto-offset-reset controls the starting point. After a group commits, auto-offset-reset is ignored for that partition.


---

© LearnSome.tech · support@iwantto.learnsome.tech
