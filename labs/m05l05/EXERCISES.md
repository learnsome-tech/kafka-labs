# Exercises — Headers, Envelopes And Event Metadata

Lesson `m05l05` · [Watch](https://learnsome.tech/courses/kafka-course/watch?lesson=m05l05)

## Exercise 1: Add trace-id header and source field to the envelope

1. Add a trace-id header with a fixed string value and verify the consumer prints it.
2. Add a source-service field to the envelope and confirm the consumer prints its value.
3. Consume with rpk and confirm the trace-id header is not visible in the raw value output.

> **Hint**: Headers are byte values: encode a string with b'value' or 'value'.encode(). The rpk format string only shows key and value, not headers, which demonstrates why headers are invisible to consumers that use the raw wire output.


---

© LearnSome.tech · support@iwantto.learnsome.tech
