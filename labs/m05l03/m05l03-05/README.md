# m05l03-05 · Register a compatible schema: add an optional field

**Lesson:** [Compatibility Modes](https://learnsome.tech/learn/kafka-course/m05l03) (lesson 5.3, module 5: Schemas, Serialisation And Evolution) · Pro  
**Check:** Checker

## Goal

You can set a compatibility level on a schema registry subject, demonstrate that an incompatible schema change is rejected, register a backward-compatible addition, and explain the practical difference between BACKWARD, FORWARD, and FULL modes.

In the lesson: Version two adds an optional string field named s alongside the existing ID field. Records written with the version-one schema contain only the ID field, which is still valid under the version-two schema because the new field is optional. A consumer using version two can read old records without any error. The registry accepts this change and assigns version two with identifier two. The schema list command then shows both versions registered under the same subject, which gives you a complete audit trail of how the schema has evolved.

## Files

- [`starter/register_bad.sh`](starter/register_bad.sh)
- [`starter/register_v1.sh`](starter/register_v1.sh)
- [`starter/register_v2.sh`](starter/register_v2.sh): the listing from the lesson
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/setup.sh`](starter/setup.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m05l03/m05l03-05/starter`
2. Read `register_v2.sh`.
3. Edit `register_v2.sh` and check it: `bash -n register_v2.sh`.
4. Check it from the repository root: `./check m05l03-05`.

## How to check

`./check m05l03-05` copies `starter/` into a scratch directory and runs `bash -n register_v2.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the shell script parses (`bash -n`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m05l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
