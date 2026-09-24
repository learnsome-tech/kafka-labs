# Exercises — Evolving An Event Without Breaking Consumers

Lesson `m05l04` · [Watch](https://learnsome.tech/courses/kafka-course/watch?lesson=m05l04)

## Exercise 1: Test safe and breaking schema changes

1. Send a record with a new optional field named region and verify the v-one consumer still works.
2. Send a record where id is renamed to order-id and confirm the v-one consumer raises a key error.
3. Fix the consumer to handle both id and order-id with a dictionary get call and a default value.

> **Hint**: Use value.get to read a field with a fallback: v.get('order-id') or v.get('id') handles both old and new field names in one expression.


---

© LearnSome.tech · support@iwantto.learnsome.tech
