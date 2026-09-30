# m05l05 · Headers, Envelopes And Event Metadata

Module 5: Schemas, Serialisation And Evolution · lesson 5.5 · Pro · [Open the lesson](https://learnsome.tech/learn/kafka-course/m05l05)

**Goal:** You can attach record headers to a Kafka message in kafka-python, design an envelope structure with event ID, type, version, occurred-at, and payload, and consume both headers and envelope fields in a deterministic printed output.

## Labs

| Lab | What it is | Check |
| --- | --- | --- |
| [m05l05-02](m05l05-02/) | Start the broker, build the client, create the topic | Checker |
| [m05l05-03](m05l05-03/) | Producer: send one envelope record with two headers | Checker |
| [m05l05-04](m05l05-04/) | Consumer: print headers and envelope fields | Checker |
| [m05l05-05](m05l05-05/) | Consume with rpk to see the raw wire value | Checker |
| [m05l05-08](m05l05-08/) | Remove the broker and network | Checker |

## Exercises

Open exercises from the lesson, to try on your own. They have no answer files: work them out, and use the labs above as reference.

### Add trace-ID header and source field to the envelope

1. Add a trace-id header with a fixed string value and verify the consumer prints it.
2. Add a source-service field to the envelope and confirm the consumer prints its value.
3. Consume with rpk and confirm the trace-id header is not visible in the raw value output.

> **Hint:** Headers are byte values: encode a string with b'value' or 'value'.encode(). The rpk format string only shows key and value, not headers, which demonstrates why headers are invisible to consumers that use the raw wire output.

## Check yourself

- What Python type does msg.headers return in kafka-python, and what does each element contain?
- Why are record headers not visible when consuming with rpk topic consume using the key-value format string?
- Which event metadata field in the envelope makes idempotent processing possible without a separate header?
- What is the practical difference between putting a trace-ID in a header versus in the envelope?

---

[Course README](../../README.md) · [Apache Kafka & Event Streaming on LearnSome.tech](https://learnsome.tech/courses/kafka-course)
