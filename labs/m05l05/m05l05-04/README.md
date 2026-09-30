# m05l05-04 · Consumer: print headers and envelope fields

**Lesson:** [Headers, Envelopes And Event Metadata](https://learnsome.tech/learn/kafka-course/m05l05) (lesson 5.5, module 5: Schemas, Serialisation And Evolution) · Pro  
**Check:** Read along

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

1. Read `starter/envelope_consumer.py` alongside the lesson.
2. On a machine that has what it needs, the lesson ran it with:

   ```sh
   bash setup.sh >/dev/null 2>&1
   docker run --rm --network m05l05-net -v "$PWD:/app" m05l05-client python envelope_consumer.py
   ```

## How to check

**Read along.** It needs Docker (or another container engine), which the lab sandbox does not have. Run it on a machine with Docker installed.

There is nothing to check: `./check m05l05-04` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m05l05) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
