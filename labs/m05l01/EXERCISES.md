# Exercises — Bytes On The Wire: JSON, Avro And Protobuf

Lesson `m05l01` · [Watch](https://learnsome.tech/courses/kafka-course/watch?lesson=m05l01)

## Exercise 1: Explore serialization tradeoffs

1. Add an extra key to the event dictionary and re-run; observe how the JSON byte count grows.
2. Change the struct format to three integers and compare the new byte count to the JSON size.
3. Run rpk topic consume on the binary topic and describe what the raw bytes look like on screen.

> **Hint**: Struct format letters: B is an unsigned byte, I is a four-byte unsigned integer, H is a two-byte unsigned short, and i is a signed integer.


---

© LearnSome.tech · support@iwantto.learnsome.tech
