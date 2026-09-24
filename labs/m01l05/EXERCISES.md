# Exercises — Retention: Time, Size And Why Data Stays

Lesson `m01l05` · [Watch](https://learnsome.tech/courses/kafka-course/watch?lesson=m01l05)

## Exercise 1: Configure retention yourself

1. Set retention.ms to sixty thousand milliseconds; confirm with rpk topic describe -c.
2. Set retention.bytes to one hundred thousand; describe the topic and find the new setting.
3. Set both retention.ms and retention.bytes in one alter-config call using two -s flags.

> **Hint**: rpk topic alter-config accepts multiple -s flags: -s retention.ms=VALUE -s retention.bytes=VALUE.


---

© LearnSome.tech · support@iwantto.learnsome.tech
