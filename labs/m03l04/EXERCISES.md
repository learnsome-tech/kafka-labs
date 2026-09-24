# Exercises — Rebalancing And Its Cost

Lesson `m03l04` · [Watch](https://learnsome.tech/courses/kafka-course/watch?lesson=m03l04)

## Exercise 1: Try it yourself

1. Set session-timeout to six seconds and heartbeat-interval to two seconds, then run the consumer.
2. Add a sleep inside the for loop longer than max-poll-interval and observe the error raised.
3. Explain what the broker does between a missed heartbeat and the session timeout expiring.

> **Hint**: The broker starts counting toward the session timeout from the last successful heartbeat, not from when poll was last called. The heartbeat thread keeps that clock reset as long as the application is alive and the thread is running.


---

© LearnSome.tech · support@iwantto.learnsome.tech
