# Exercises — In-Sync Replicas And Minimum ISR

Lesson `m07l02` · [Watch](https://learnsome.tech/courses/kafka-course/watch?lesson=m07l02)

## Exercise 1: Practice: observe minimum ISR in action

1. Start a cluster with a topic of replication factor three and min.insync.replicas two.
2. Run the ISR program and confirm all three replicas appear in the in-sync set.
3. In one sentence, explain why acks-all still succeeds if one ISR member stops responding.

> **Hint**: The alter-config command sets topic-level overrides; the broker default for min.insync.replicas is typically one, so setting it to two on the topic is a stricter requirement than the broker default.


---

© LearnSome.tech · support@iwantto.learnsome.tech
