# m05l03-02 · Start the broker and create the events topic

**Lesson:** [Compatibility Modes](https://learnsome.tech/learn/kafka-course/m05l03) (lesson 5.3, module 5: Schemas, Serialisation And Evolution) · Pro  
**Check:** Read along

## Goal

You can set a compatibility level on a schema registry subject, demonstrate that an incompatible schema change is rejected, register a backward-compatible addition, and explain the practical difference between BACKWARD, FORWARD, and FULL modes.

In the lesson: The setup starts a broker on a dedicated network and creates a topic named after this lesson. The schema registry is included in the Redpanda dev-container image with no extra flags: it starts automatically alongside the broker and listens on port eight-thousand and eighty-one inside the container. The topic exists only to anchor the subject name when we demonstrate compatibility enforcement: no records are produced to it in this lesson.

## Files

- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/setup.sh`](starter/setup.sh): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/setup.sh` alongside the lesson.
2. On a machine that has what it needs, the lesson ran it with:

   ```sh
   bash setup.sh
   ```

## How to check

**Read along.** It needs Docker (or another container engine), which the lab sandbox does not have. Run it on a machine with Docker installed.

There is nothing to check: `./check m05l03-02` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m05l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
