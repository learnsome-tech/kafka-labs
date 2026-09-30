# m05l02-04 · Register the schema with the registry

**Lesson:** [The Schema Registry](https://learnsome.tech/learn/kafka-course/m05l02) (lesson 5.2, module 5: Schemas, Serialisation And Evolution) · Pro  
**Check:** Read along

## Goal

You can register a JSON schema with a schema registry, list subjects, retrieve a schema by version, and explain the TopicNameStrategy naming convention and the Confluent wire format magic byte.

In the lesson: The registration script writes the schema into the broker container using cat with a here-document piped through docker exec, then calls rpk registry schema create with the subject name, the file path, and the schema type. The subject name follows the TopicNameStrategy convention: the topic name m-zero-five-l-zero-two-orders combined with the dash-value suffix. The registry assigns version one and schema identifier one, both of which are printed in the result table. From this point, any client on the same network can fetch the schema by subject name and version or by the numeric identifier alone.

## Files

- [`starter/register.sh`](starter/register.sh): the listing from the lesson
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/setup.sh`](starter/setup.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/register.sh` alongside the lesson.
2. On a machine that has what it needs, the lesson ran it with:

   ```sh
   bash setup.sh >/dev/null 2>&1
   bash register.sh
   ```

## How to check

**Read along.** It needs Docker (or another container engine), which the lab sandbox does not have. Run it on a machine with Docker installed.

There is nothing to check: `./check m05l02-04` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m05l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
