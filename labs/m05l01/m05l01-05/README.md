# m05l01-05 · Avro and Protobuf: schema-full wire formats

**Lesson:** [Bytes On The Wire: JSON, Avro And Protobuf](https://learnsome.tech/learn/kafka-course/m05l01) (lesson 5.1, module 5: Schemas, Serialisation And Evolution) · Pro  
**Check:** Read along

## Goal

You can produce the same event as a JSON record and as a compact binary struct, explain why JSON is schema-less while Avro and Protobuf are schema-full, and interpret the byte-count difference between the two approaches.

In the lesson: The code panel shows two schema-full formats for the same order event. In Avro, the schema is a JSON document that names the record type and declares each field along with its type. On the wire, an Avro message carries only the values in the order the schema declares, with no field names. A reader that holds the same schema version reconstructs the structure. Protocol Buffers assign each field a number in the message definition, and that number identifies the field in the binary encoding. Both formats separate the schema from the data: the producer and consumer compile or load the schema at startup, not at message decode time. The benefit is that field names, which can be many characters long, never appear in the billions of messages flowing through a high-throughput topic.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/avro-and-protobuf-schema-full-wire-formats.txt`](starter/avro-and-protobuf-schema-full-wire-formats.txt): the listing from the lesson
- [`starter/serialize.py`](starter/serialize.py)
- [`starter/setup.sh`](starter/setup.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/avro-and-protobuf-schema-full-wire-formats.txt` alongside the lesson.

## How to check

**Read along.** It is a listing to read alongside the lesson, not a program to run.

There is nothing to check: `./check m05l01-05` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m05l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
