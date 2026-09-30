# m05l05-08 · Remove the broker and network

**Lesson:** [Headers, Envelopes And Event Metadata](https://learnsome.tech/learn/kafka-course/m05l05) (lesson 5.5, module 5: Schemas, Serialisation And Evolution) · Pro  
**Check:** Checker

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

1. Go to the starter: `cd labs/m05l05/m05l05-08/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   docker rm -f m05l05-broker
   docker network rm m05l05-net
   ```
4. Edit `session.sh` and check it: `bash -n session.sh`.
5. Check it from the repository root: `./check m05l05-08`.

## How to check

`./check m05l05-08` copies `starter/` into a scratch directory and runs `bash -n session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the shell script parses (`bash -n`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m05l05) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
