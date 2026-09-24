# Exercises — Why A Log And Not A Queue

Lesson `m01l01` · [Watch](https://learnsome.tech/courses/kafka-course/watch?lesson=m01l01)

## Exercise 1: Try it yourself

1. Produce five records and consume from offset zero; count them and confirm all five appear.
2. Start fresh, produce three records, then consume from offset one; confirm you get two back.
3. Change the format string to show only the value with no offset column; verify order is kept.

> **Hint**: Use -o 0 with rpk topic consume to start reading from the beginning of the partition.


---

© LearnSome.tech · support@iwantto.learnsome.tech
