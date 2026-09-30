# m05l01-02 · Start the broker, build the client, create both topics

**Lesson:** [Bytes On The Wire: JSON, Avro And Protobuf](https://learnsome.tech/learn/kafka-course/m05l01) (lesson 5.1, module 5: Schemas, Serialisation And Evolution) · Pro  
**Check:** Read along

## Goal

You can produce the same event as a JSON record and as a compact binary struct, explain why JSON is schema-less while Avro and Protobuf are schema-full, and interpret the byte-count difference between the two approaches.

In the lesson: The setup script creates an isolated network and starts a single-node broker on it. After a short wait for the broker to accept connections, it builds the client image from the kafka-python context and creates two separate topics. One topic will hold JSON records and the other will hold records encoded as a compact binary struct. Using two topics keeps the formats visually separate when we consume them: consuming each topic shows exactly what the broker received, with no conversion or interpretation. The two topics are ready when both status columns confirm success.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
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

There is nothing to check: `./check m05l01-02` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m05l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
