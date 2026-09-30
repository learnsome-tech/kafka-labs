# m05l01-02 · Start the broker, build the client, create both topics

**Lesson:** [Bytes On The Wire: JSON, Avro And Protobuf](https://learnsome.tech/learn/kafka-course/m05l01) (lesson 5.1, module 5: Schemas, Serialisation And Evolution) · Pro  
**Check:** Checker

## Goal

You can produce the same event as a JSON record and as a compact binary struct, explain why JSON is schema-less while Avro and Protobuf are schema-full, and interpret the byte-count difference between the two approaches.

In the lesson: The setup script creates an isolated network and starts a single-node broker on it. After a short wait for the broker to accept connections, it builds the client image from the kafka-python context and creates two separate topics. One topic will hold JSON records and the other will hold records encoded as a compact binary struct. Using two topics keeps the formats visually separate when we consume them: consuming each topic shows exactly what the broker received, with no conversion or interpretation. The two topics are ready when both status columns confirm success.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/setup.sh`](starter/setup.sh): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m05l01/m05l01-02/starter`
2. Read `setup.sh`.
3. Edit `setup.sh` and check it: `bash -n setup.sh`.
4. Check it from the repository root: `./check m05l01-02`.

## How to check

`./check m05l01-02` copies `starter/` into a scratch directory and runs `bash -n setup.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the shell script parses (`bash -n`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m05l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
