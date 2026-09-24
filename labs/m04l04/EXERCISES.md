# Exercises — Poison Messages And Dead Letter Topics

Lesson `m04l04` · [Watch](https://learnsome.tech/courses/kafka-course/watch?lesson=m04l04)

## Exercise 1: Add a second malformed record and inspect results

1. Add a fifth record with a truncated JSON value and re-run the full pipeline.
2. Read the dead letter topic and confirm both failures show distinct error messages.
3. Add a header carrying the source topic name to the dead letter record.

> **Hint**: Each call to producer send accepts a headers argument as a list of pairs where the key is a string and the value is bytes.


---

© LearnSome.tech · support@iwantto.learnsome.tech
