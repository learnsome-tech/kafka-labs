# m05l03-04 · Attempt to register an incompatible schema change

**Lesson:** [Compatibility Modes](https://learnsome.tech/learn/kafka-course/m05l03) (lesson 5.3, module 5: Schemas, Serialisation And Evolution) · Pro  
**Check:** Read along

## Goal

You can set a compatibility level on a schema registry subject, demonstrate that an incompatible schema change is rejected, register a backward-compatible addition, and explain the practical difference between BACKWARD, FORWARD, and FULL modes.

In the lesson: The incompatible schema changes the root type from object to string. A consumer using version one expects an object and would fail to decode a string value. The registry detects this violation and rejects the registration with an error that names the subject, the existing version, the old schema, and the compatibility level that was violated. The type-changed error message identifies exactly which structural difference caused the rejection. No new version is created. The existing version-one schema remains the only registered version for this subject, and all consumers relying on it are protected.

## Files

- [`starter/register_bad.sh`](starter/register_bad.sh): the listing from the lesson
- [`starter/register_v1.sh`](starter/register_v1.sh)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/setup.sh`](starter/setup.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/register_bad.sh` alongside the lesson.
2. On a machine that has what it needs, the lesson ran it with:

   ```sh
   bash setup.sh >/dev/null 2>&1
   bash register_bad.sh
   ```

## How to check

**Read along.** It is a listing to read alongside the lesson, not a program to run.

There is nothing to check: `./check m05l03-04` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m05l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
