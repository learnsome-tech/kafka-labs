# m05l05-04 · Consumer: print headers and envelope fields

**Lesson:** [Headers, Envelopes And Event Metadata](https://learnsome.tech/learn/kafka-course/m05l05) (lesson 5.5, module 5: Schemas, Serialisation And Evolution) · Pro  
**Check:** Checker

## Goal

You can attach record headers to a Kafka message in kafka-python, design an envelope structure with event ID, type, version, occurred-at, and payload, and consume both headers and envelope fields in a deterministic printed output.

In the lesson: The consumer reads from the earliest offset without a group identifier, so it always starts at the beginning of the topic. For each record it iterates over the headers list and prints each key and decoded value. The msg.headers attribute is a list of two-element tuples, matching the format the producer used. After printing the headers, the consumer deserializes the JSON value, extracts the event type and version from the envelope, and prints the nested payload. The payload field is a Python dictionary that str converts to a human-readable representation.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/envelope_consumer.py`](starter/envelope_consumer.py): the listing from the lesson
- [`starter/envelope_producer.py`](starter/envelope_producer.py)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/setup.sh`](starter/setup.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m05l05/m05l05-04/starter`
2. Read `envelope_consumer.py`.
3. Edit `envelope_consumer.py` and check it: `python3 -m py_compile envelope_consumer.py`.
4. Check it from the repository root: `./check m05l05-04`.

## How to check

`./check m05l05-04` copies `starter/` into a scratch directory and runs `python3 -m py_compile envelope_consumer.py` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the Python program compiles (`python3 -m py_compile`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m05l05) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
