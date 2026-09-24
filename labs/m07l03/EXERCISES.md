# Exercises — Losing A Broker

Lesson `m07l03` · [Watch](https://learnsome.tech/courses/kafka-course/watch?lesson=m07l03)

## Exercise 1: Practice: controlled broker failure and recovery

1. Start a three-broker cluster without auto-remove, with min.insync.replicas two on a topic.
2. Stop broker two, describe the partitions, and identify which partitions changed leaders.
3. Restart broker two with docker start and confirm it rejoins with the same broker identifier.

> **Hint**: The leader epoch increments whenever a partition elects a new leader, so comparing the epoch before and after a stop tells you which partitions were affected.


---

© LearnSome.tech · support@iwantto.learnsome.tech
