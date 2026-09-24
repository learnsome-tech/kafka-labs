# Exercises — Consumer Groups And Partition Assignment

Lesson `m03l02` · [Watch](https://learnsome.tech/courses/kafka-course/watch?lesson=m03l02)

## Exercise 1: Try it yourself

1. Create a four-partition topic with two records per partition and confirm all are assigned.
2. Run a second consumer in the same group and observe how the partitions divide.
3. Run rpk group describe after both exit and compare current-offset per partition.

> **Hint**: With four partitions and two consumers, each consumer typically gets two partitions under the default range assignment strategy. The partition split is visible both in the on-assign output and in rpk group describe.


---

© LearnSome.tech · support@iwantto.learnsome.tech
