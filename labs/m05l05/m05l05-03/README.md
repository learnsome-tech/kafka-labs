# m05l05-03 · Producer: send one envelope record with two headers

**Lesson:** [Headers, Envelopes And Event Metadata](https://learnsome.tech/learn/kafka-course/m05l05) (lesson 5.5, module 5: Schemas, Serialisation And Evolution) · Pro  
**Check:** Read along

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

1. Read `starter/envelope_producer.py` alongside the lesson.
2. On a machine that has what it needs, the lesson ran it with:

   ```sh
   bash setup.sh >/dev/null 2>&1
   docker run --rm --network m05l05-net -v "$PWD:/app" m05l05-client python envelope_producer.py
   ```

## How to check

**Read along.** It needs Docker (or another container engine), which the lab sandbox does not have. Run it on a machine with Docker installed.

There is nothing to check: `./check m05l05-03` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m05l05) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
