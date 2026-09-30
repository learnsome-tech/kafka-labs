# m05l04-09 · Remove the broker and network

**Lesson:** [Evolving An Event Without Breaking Consumers](https://learnsome.tech/learn/kafka-course/m05l04) (lesson 5.4, module 5: Schemas, Serialisation And Evolution) · Pro  
**Check:** Checker

## Goal

You can produce a v-one event and a v-two event with an extra optional field to the same topic, show that the v-one consumer code processes both without error, and explain why renaming a field is a breaking change while adding one is not.

In the lesson: The broker container and its network are removed. The topic, its records, and the consumer group offset information are all discarded when the container stops. The client image stays cached. Cleaning up after each lesson keeps the Docker daemon in a predictable state for the verification run.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`starter/setup.sh`](starter/setup.sh)
- [`starter/v1_consumer.py`](starter/v1_consumer.py)
- [`starter/v1_producer.py`](starter/v1_producer.py)
- [`starter/v2_producer.py`](starter/v2_producer.py)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m05l04/m05l04-09/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   docker rm -f m05l04-broker
   docker network rm m05l04-net
   ```
4. Edit `session.sh` and check it: `bash -n session.sh`.
5. Check it from the repository root: `./check m05l04-09`.

## How to check

`./check m05l04-09` copies `starter/` into a scratch directory and runs `bash -n session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the shell script parses (`bash -n`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m05l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
