# m05l05-03 · Producer: send one envelope record with two headers

**Lesson:** [Headers, Envelopes And Event Metadata](https://learnsome.tech/learn/kafka-course/m05l05) (lesson 5.5, module 5: Schemas, Serialisation And Evolution) · Pro  
**Check:** Checker

## Goal

You can attach record headers to a Kafka message in kafka-python, design an envelope structure with event ID, type, version, occurred-at, and payload, and consume both headers and envelope fields in a deterministic printed output.

In the lesson: The producer builds an envelope dictionary with five fields: the event identifier, the event type, the schema version, the occurred-at timestamp expressed as a fixed ISO string, and a nested payload with the business data. The fixed timestamp makes the output deterministic across runs. The headers list contains two entries: content-type and schema-version, each with a byte value. The kafka-python send method accepts headers as a list of two-element tuples. The envelope and the headers are sent together as a single record to the events topic.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/envelope_producer.py`](starter/envelope_producer.py): the listing from the lesson
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/setup.sh`](starter/setup.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m05l05/m05l05-03/starter`
2. Read `envelope_producer.py`.
3. Edit `envelope_producer.py` and check it: `python3 -m py_compile envelope_producer.py`.
4. Check it from the repository root: `./check m05l05-03`.

## How to check

`./check m05l05-03` copies `starter/` into a scratch directory and runs `python3 -m py_compile envelope_producer.py` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the Python program compiles (`python3 -m py_compile`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m05l05) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
