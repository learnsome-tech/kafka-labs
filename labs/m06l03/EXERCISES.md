# Exercises — Change Data Capture In Principle

Lesson `m06l03` · [Watch](https://learnsome.tech/courses/kafka-course/watch?lesson=m06l03)

## Exercise 1: Explore the change stream

1. Delete the row you updated and read the slot again; find the delete entry in the change stream.
2. Insert three more rows and read the slot; confirm each appears as a separate insert line.
3. Restart the database container and confirm the replication slot survives the restart.

> **Hint**: Use pg_replication_slots to inspect the slot state, and remember that consuming the slot advances its position so each read returns only new changes.


---

© LearnSome.tech · support@iwantto.learnsome.tech
