# m05l01-03 · Produce JSON and binary representations of the same event

**Lesson:** [Bytes On The Wire: JSON, Avro And Protobuf](https://learnsome.tech/learn/kafka-course/m05l01) (lesson 5.1, module 5: Schemas, Serialisation And Evolution) · Pro  
**Check:** Checker

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

1. Go to the starter: `cd labs/m05l01/m05l01-03/starter`
2. Read `serialize.py`.
3. Edit `serialize.py` and check it: `python3 -m py_compile serialize.py`.
4. Check it from the repository root: `./check m05l01-03`.

## How to check

`./check m05l01-03` copies `starter/` into a scratch directory and runs `python3 -m py_compile serialize.py` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the Python program compiles (`python3 -m py_compile`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m05l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
