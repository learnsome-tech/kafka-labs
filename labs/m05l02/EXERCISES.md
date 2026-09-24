# Exercises — The Schema Registry

Lesson `m05l02` · [Watch](https://learnsome.tech/courses/kafka-course/watch?lesson=m05l02)

## Exercise 1: Register a second schema under a different subject

1. Create a schema for a shipment event with a tracking number string and a status string field.
2. Register it under m05l02-shipments-value and verify it appears in the subject list.
3. Retrieve both schemas by version and compare their identifiers.

> **Hint**: Use the same heredoc registration pattern. The subject name must match the topic name with a dash-value suffix for TopicNameStrategy compatibility.


---

© LearnSome.tech · support@iwantto.learnsome.tech
