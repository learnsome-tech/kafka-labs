# Exercises — Committing Offsets: Auto, Manual And Lag

Lesson `m03l03` · [Watch](https://learnsome.tech/courses/kafka-course/watch?lesson=m03l03)

## Exercise 1: Try it yourself

1. Run the consumer without the commit flag twice and verify both runs read all four records.
2. Run with the commit flag, then run without it: observe whether the second run finds records.
3. Produce two more records after committing and check the lag in rpk group describe.

> **Hint**: The committed offset is stored per partition under the group name. Without a commit, the position never advances on the broker, so every run starts from where auto-offset-reset or the last commit dictates. With four records committed and two more added, the lag becomes two.


---

© LearnSome.tech · support@iwantto.learnsome.tech
