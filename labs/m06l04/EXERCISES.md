# Exercises — Log Compaction: A Topic As A Table

Lesson `m06l04` · [Watch](https://learnsome.tech/courses/kafka-course/watch?lesson=m06l04)

## Exercise 1: Update keys and observe the table view

1. Produce two more apple price updates and re-run fold-prices to see the new final price.
2. Add a new key and re-run the fold; confirm it appears in the sorted output.
3. Describe the topic with the partition flag and note the high watermark after all produces.

> **Hint**: The fold program always reads from offset zero so it sees the full history; the final dictionary entry for each key always holds the last value regardless of how many updates were produced.


---

© LearnSome.tech · support@iwantto.learnsome.tech
