# m05l02-02 · Start the broker and create the orders topic

**Lesson:** [The Schema Registry](https://learnsome.tech/learn/kafka-course/m05l02) (lesson 5.2, module 5: Schemas, Serialisation And Evolution) · Pro  
**Check:** Checker

## Goal

You can register a JSON schema with a schema registry, list subjects, retrieve a schema by version, and explain the TopicNameStrategy naming convention and the Confluent wire format magic byte.

In the lesson: The setup starts a broker on a dedicated network for this lesson. The schema registry is included in the Redpanda dev-container image with no extra configuration: once the broker is running, the registry API is available at port eight-thousand and eighty-one on the broker container. We also create the orders topic so that later in the lesson we can refer to subject naming conventions with a real topic name. The topic uses a single partition because the lesson focuses on schema operations, not on distribution. The topic is ready when the status line prints the confirmation.

## Files

- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/setup.sh`](starter/setup.sh): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m05l02/m05l02-02/starter`
2. Read `setup.sh`.
3. Edit `setup.sh` and check it: `bash -n setup.sh`.
4. Check it from the repository root: `./check m05l02-02`.

## How to check

`./check m05l02-02` copies `starter/` into a scratch directory and runs `bash -n setup.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the shell script parses (`bash -n`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m05l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
