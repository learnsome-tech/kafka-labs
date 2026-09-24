# Exercises — Compatibility Modes

Lesson `m05l03` · [Watch](https://learnsome.tech/courses/kafka-course/watch?lesson=m05l03)

## Exercise 1: Test other compatibility levels

1. Set the compatibility level to FORWARD and register a schema that removes the optional s field.
2. Set the level to NONE and register a schema that renames id to order-id; confirm it is accepted.
3. Reset the level to BACKWARD and try to register the renamed schema again; confirm it is rejected

> **Hint**: A field removal is FORWARD-compatible because old consumers reading new records see a missing optional field, which they can ignore. It is not BACKWARD-compatible because new consumers reading old records expect the field to be present.


---

© LearnSome.tech · support@iwantto.learnsome.tech
