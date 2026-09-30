# m05l03-05 · Register a compatible schema: add an optional field

**Lesson:** [Compatibility Modes](https://learnsome.tech/learn/kafka-course/m05l03) (lesson 5.3, module 5: Schemas, Serialisation And Evolution) · Pro  
**Check:** Read along

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

1. Read `starter/register_v2.sh` alongside the lesson.
2. On a machine that has what it needs, the lesson ran it with:

   ```sh
   bash setup.sh >/dev/null 2>&1
   bash register_v2.sh
   ```

## How to check

**Read along.** It needs Docker (or another container engine), which the lab sandbox does not have. Run it on a machine with Docker installed.

There is nothing to check: `./check m05l03-05` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m05l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
