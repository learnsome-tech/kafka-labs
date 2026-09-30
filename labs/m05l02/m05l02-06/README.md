# m05l02-06 · Schema identifiers and the Confluent wire format

**Lesson:** [The Schema Registry](https://learnsome.tech/learn/kafka-course/m05l02) (lesson 5.2, module 5: Schemas, Serialisation And Evolution) · Pro  
**Check:** Read along

## Goal

You can register a JSON schema with a schema registry, list subjects, retrieve a schema by version, and explain the TopicNameStrategy naming convention and the Confluent wire format magic byte.

In the lesson: Confluent-compatible producers that integrate with the registry add a five-byte header before the encoded payload. The first byte is always zero, which serves as a magic byte to identify the framing format. The next four bytes are the schema identifier as a big-endian four-byte integer. Any consumer that sees this prefix can read the identifier, fetch the corresponding schema from the registry, and decode the remaining bytes. This framing is optional: plain JSON producers that do not use the framing send their bytes without the prefix, as the programs in this module do. The registry still stores and enforces the schema; the framing prefix is a convenience for consumers that need to auto-discover which schema to apply.

## Files

- [`starter/register.sh`](starter/register.sh)
- [`starter/schema-identifiers-and-the-confluent-wire-fo.txt`](starter/schema-identifiers-and-the-confluent-wire-fo.txt): the listing from the lesson
- [`starter/setup.sh`](starter/setup.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/schema-identifiers-and-the-confluent-wire-fo.txt` alongside the lesson.

## How to check

**Read along.** It is a listing to read alongside the lesson, not a program to run.

There is nothing to check: `./check m05l02-06` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m05l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
