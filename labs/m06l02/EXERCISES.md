# Exercises — The Transactional Outbox

Lesson `m06l02` · [Watch](https://learnsome.tech/courses/kafka-course/watch?lesson=m06l02)

## Exercise 1: Extend the outbox relay

1. Add a third order to populate.py and relay it; confirm the topic has three events.
2. Run the relay twice in a row and confirm the second run always prints zero events relayed.
3. Change the relay to process one row at a time and count how many runs drain the outbox.

> **Hint**: Use the rpk consume command with the offset and num flags to fetch only the new events from the topic without re-reading earlier ones.


---

© LearnSome.tech · support@iwantto.learnsome.tech
