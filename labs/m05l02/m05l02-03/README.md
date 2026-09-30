# m05l02-03 · The JSON Schema format and what it describes

**Lesson:** [The Schema Registry](https://learnsome.tech/learn/kafka-course/m05l02) (lesson 5.2, module 5: Schemas, Serialisation And Evolution) · Pro  
**Check:** Read along

## Goal

You can register a JSON schema with a schema registry, list subjects, retrieve a schema by version, and explain the TopicNameStrategy naming convention and the Confluent wire format magic byte.

In the lesson: JSON Schema is a vocabulary for describing the structure of JSON values. The type keyword at the top level declares the overall shape: object means the value must be a JSON object. The properties keyword names each field and gives its expected type. The required keyword lists the fields that must appear in every valid message. When this schema is registered under the subject name for the orders topic, any producer or consumer can fetch it by identifier and validate incoming or outgoing records against it. The schema in the code panel describes an order event with a required integer identifier and an optional number for the monetary amount.

## Files

- [`starter/setup.sh`](starter/setup.sh)
- [`starter/the-json-schema-format-and-what-it-describes.txt`](starter/the-json-schema-format-and-what-it-describes.txt): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/the-json-schema-format-and-what-it-describes.txt` alongside the lesson.

## How to check

**Read along.** It is a listing to read alongside the lesson, not a program to run.

There is nothing to check: `./check m05l02-03` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m05l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
