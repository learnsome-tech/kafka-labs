# Exercises — Acknowledgements: What Acks Means For Durability

Lesson `m02l03` · [Watch](https://learnsome.tech/courses/kafka-course/watch?lesson=m02l03)

## Exercise 1: Observe the acks difference on delivery latency

1. Produce one hundred records with acks zero and measure how long flush takes.
2. Produce one hundred records with acks all and measure how long flush takes.
3. Print a boolean indicating whether the acks-all flush took longer than acks zero.

> **Hint**: Use time.time before and after flush and compare the elapsed values as a boolean comparison.


---

© LearnSome.tech · support@iwantto.learnsome.tech
