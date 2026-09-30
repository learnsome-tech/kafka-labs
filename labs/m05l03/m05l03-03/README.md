# m05l03-03 · Register v-one schema and set BACKWARD compatibility

**Lesson:** [Compatibility Modes](https://learnsome.tech/learn/kafka-course/m05l03) (lesson 5.3, module 5: Schemas, Serialisation And Evolution) · Pro  
**Check:** Checker

## Goal

You can set a compatibility level on a schema registry subject, demonstrate that an incompatible schema change is rejected, register a backward-compatible addition, and explain the practical difference between BACKWARD, FORWARD, and FULL modes.

In the lesson: The first command writes the version-one schema into the broker container using a here-document piped through docker exec. The schema declares the event as an object with a required integer field named ID. The second command registers it and receives version one with identifier one. The third command sets the compatibility level for this subject to BACKWARD. From this point, the registry will reject any new schema version that cannot read records written with version one. The current schema is the baseline against which all future changes will be checked.

## Files

- [`starter/register_v1.sh`](starter/register_v1.sh): the listing from the lesson
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/setup.sh`](starter/setup.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m05l03/m05l03-03/starter`
2. Read `register_v1.sh`.
3. Edit `register_v1.sh` and check it: `bash -n register_v1.sh`.
4. Check it from the repository root: `./check m05l03-03`.

## How to check

`./check m05l03-03` copies `starter/` into a scratch directory and runs `bash -n register_v1.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the shell script parses (`bash -n`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m05l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
