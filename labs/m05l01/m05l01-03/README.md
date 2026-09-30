# m05l01-03 · Produce JSON and binary representations of the same event

**Lesson:** [Bytes On The Wire: JSON, Avro And Protobuf](https://learnsome.tech/learn/kafka-course/m05l01) (lesson 5.1, module 5: Schemas, Serialisation And Evolution) · Pro  
**Check:** Read along

## Goal

You can produce the same event as a JSON record and as a compact binary struct, explain why JSON is schema-less while Avro and Protobuf are schema-full, and interpret the byte-count difference between the two approaches.

In the lesson: The program encodes the same event in two ways. The JSON path calls the json dumps function, producing the full text representation with field names, colons, and braces, then encodes it to bytes. The binary path calls the struct pack function with a format string: the exclamation mark signals big-endian byte order, capital B means one unsigned byte used as a type tag, capital I means one four-byte unsigned integer for the order identifier, and capital H means one two-byte unsigned short for the total. The output shows JSON takes forty bytes while the hand-packed struct takes seven, giving a ratio of five point seven to one. Both representations carry exactly the same order information; only the wire encoding differs. The broker receives both and stores them without any knowledge of how they were serialized.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/serialize.py`](starter/serialize.py): the listing from the lesson
- [`starter/setup.sh`](starter/setup.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/serialize.py` alongside the lesson.
2. On a machine that has what it needs, the lesson ran it with:

   ```sh
   bash setup.sh >/dev/null 2>&1
   docker run --rm --network m05l01-net -v "$PWD:/app" m05l01-client python serialize.py
   ```

## How to check

**Read along.** It needs Docker (or another container engine), which the lab sandbox does not have. Run it on a machine with Docker installed.

There is nothing to check: `./check m05l01-03` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m05l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
