# m05l05-08 · Remove the broker and network

**Lesson:** [Headers, Envelopes And Event Metadata](https://learnsome.tech/learn/kafka-course/m05l05) (lesson 5.5, module 5: Schemas, Serialisation And Evolution) · Pro  
**Check:** Read along

## Goal

You can attach record headers to a Kafka message in kafka-python, design an envelope structure with event ID, type, version, occurred-at, and payload, and consume both headers and envelope fields in a deterministic printed output.

In the lesson: We stop the broker container and remove the network. The topic, the record, and the consumer group state are all discarded. The client image remains cached. Cleaning up at the end of every lesson prevents stale containers or networks from interfering with the next verification run.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/envelope_consumer.py`](starter/envelope_consumer.py)
- [`starter/envelope_producer.py`](starter/envelope_producer.py)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`starter/setup.sh`](starter/setup.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/session.sh` alongside the lesson.
2. On a machine that has what it needs, the lesson ran it with:

   ```sh
   bash setup.sh >/dev/null 2>&1
   docker rm -f m05l05-broker
   docker network rm m05l05-net
   ```

## How to check

**Read along.** It needs Docker (or another container engine), which the lab sandbox does not have. Run it on a machine with Docker installed.

There is nothing to check: `./check m05l05-08` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m05l05) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
