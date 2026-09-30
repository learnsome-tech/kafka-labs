# m05l02-05 · List subjects and retrieve the registered schema

**Lesson:** [The Schema Registry](https://learnsome.tech/learn/kafka-course/m05l02) (lesson 5.2, module 5: Schemas, Serialisation And Evolution) · Pro  
**Check:** Read along

## Goal

You can register a JSON schema with a schema registry, list subjects, retrieve a schema by version, and explain the TopicNameStrategy naming convention and the Confluent wire format magic byte.

In the lesson: The subject list command shows every subject registered in the registry: after our registration there is exactly one, the orders value subject. The schema get command retrieves metadata by subject name and version number. The result confirms the subject name, version, schema identifier, and format type. In a production setup with many schemas, the version number allows producers and consumers to pin to a specific schema version rather than always fetching the latest, which prevents unexpected breakage when a new version is registered.

## Files

- [`starter/register.sh`](starter/register.sh)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`starter/setup.sh`](starter/setup.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/session.sh` alongside the lesson.
2. On a machine that has what it needs, the lesson ran it with:

   ```sh
   bash setup.sh >/dev/null 2>&1
   B=m05l02-broker
   S=m05l02-orders-value
   docker exec $B rpk registry subject list
   docker exec $B rpk registry schema get $S --schema-version 1
   ```

## How to check

**Read along.** It needs Docker (or another container engine), which the lab sandbox does not have. Run it on a machine with Docker installed.

There is nothing to check: `./check m05l02-05` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m05l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
