# m05l02-04 · Register the schema with the registry

**Lesson:** [The Schema Registry](https://learnsome.tech/learn/kafka-course/m05l02) (lesson 5.2, module 5: Schemas, Serialisation And Evolution) · Pro  
**Check:** Checker

## Goal

You can register a JSON schema with a schema registry, list subjects, retrieve a schema by version, and explain the TopicNameStrategy naming convention and the Confluent wire format magic byte.

In the lesson: The registration script writes the schema into the broker container using cat with a here-document piped through docker exec, then calls rpk registry schema create with the subject name, the file path, and the schema type. The subject name follows the TopicNameStrategy convention: the topic name m-zero-five-l-zero-two-orders combined with the dash-value suffix. The registry assigns version one and schema identifier one, both of which are printed in the result table. From this point, any client on the same network can fetch the schema by subject name and version or by the numeric identifier alone.

## Files

- [`starter/register.sh`](starter/register.sh): the listing from the lesson
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/setup.sh`](starter/setup.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m05l02/m05l02-04/starter`
2. Read `register.sh`.
3. Edit `register.sh` and check it: `bash -n register.sh`.
4. Check it from the repository root: `./check m05l02-04`.

## How to check

`./check m05l02-04` copies `starter/` into a scratch directory and runs `bash -n register.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the shell script parses (`bash -n`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m05l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
