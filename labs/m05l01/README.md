# m05l01 · Bytes On The Wire: JSON, Avro And Protobuf

Module 5: Schemas, Serialisation And Evolution · lesson 5.1 · Pro · [Open the lesson](https://learnsome.tech/learn/kafka-course/m05l01)

**Goal:** You can produce the same event as a JSON record and as a compact binary struct, explain why JSON is schema-less while Avro and Protobuf are schema-full, and interpret the byte-count difference between the two approaches.

## Labs

| Lab | What it is | Check |
| --- | --- | --- |
| [m05l01-02](m05l01-02/) | Start the broker, build the client, create both topics | Checker |
| [m05l01-03](m05l01-03/) | Produce JSON and binary representations of the same event | Checker |
| [m05l01-04](m05l01-04/) | Consume the JSON topic to see what the wire carries | Checker |
| [m05l01-05](m05l01-05/) | Avro and Protobuf: schema-full wire formats | Read along |
| [m05l01-07](m05l01-07/) | Remove the broker and network | Checker |

## Exercises

Open exercises from the lesson, to try on your own. They have no answer files: work them out, and use the labs above as reference.

### Explore serialization tradeoffs

1. Add an extra key to the event dictionary and re-run; observe how the JSON byte count grows.
2. Change the struct format to three integers and compare the new byte count to the JSON size.
3. Run rpk topic consume on the binary topic and describe what the raw bytes look like on screen.

> **Hint:** Struct format letters: B is an unsigned byte, I is a four-byte unsigned integer, H is a two-byte unsigned short, and i is a signed integer.

## Check yourself

- What does the ratio of forty bytes to seven bytes reveal about JSON compared to a binary struct?
- Why can any JSON reader decode a Kafka record value without an external schema?
- What does Avro omit from the wire representation that JSON always includes in every message?
- What does the exclamation mark at the start of a struct pack format string control?
- Why does the broker not care which serialization format a producer and consumer agree on?

---

[Course README](../../README.md) · [Apache Kafka & Event Streaming on LearnSome.tech](https://learnsome.tech/courses/kafka-course)
