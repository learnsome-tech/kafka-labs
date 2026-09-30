# m05l02-05 · List subjects and retrieve the registered schema

**Lesson:** [The Schema Registry](https://learnsome.tech/learn/kafka-course/m05l02) (lesson 5.2, module 5: Schemas, Serialisation And Evolution) · Pro  
**Check:** Checker

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

1. Go to the starter: `cd labs/m05l02/m05l02-05/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   B=m05l02-broker
   S=m05l02-orders-value
   docker exec $B rpk registry subject list
   docker exec $B rpk registry schema get $S --schema-version 1
   ```
4. Edit `session.sh` and check it: `bash -n session.sh`.
5. Check it from the repository root: `./check m05l02-05`.

## How to check

`./check m05l02-05` copies `starter/` into a scratch directory and runs `bash -n session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the shell script parses (`bash -n`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m05l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
