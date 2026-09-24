# Exercises — Starting A Broker And Reading Its Metadata

Lesson `m01l02` · [Watch](https://learnsome.tech/courses/kafka-course/watch?lesson=m01l02)

## Exercise 1: Try the metadata commands

1. Start a broker and run rpk cluster info; identify the broker id and the advertised address.
2. Run rpk cluster health twice in a row; note which fields are always the same.
3. Create a topic with rpk topic create, then run rpk topic list to confirm it appears.

> **Hint**: After creating a topic manually, use rpk topic describe to see its partition and replica count.


---

© LearnSome.tech · support@iwantto.learnsome.tech
