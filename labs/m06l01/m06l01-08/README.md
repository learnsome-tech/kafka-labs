# m06l01-08 · Remove the broker, database and network

**Lesson:** [Dual Writes And Why They Lose Data](https://learnsome.tech/learn/kafka-course/m06l01) (lesson 6.1, module 6: Event-Driven: Outbox, CDC, Compaction) · Pro  
**Check:** Checker

## Goal

You can explain why writing to a database and a Kafka topic in sequence is not atomic, demonstrate both failure modes with runnable programs, and describe why neither write order eliminates the consistency risk.

In the lesson: We stop both containers and remove the network. The remove command prints both names to confirm it targeted the right resources. Running this cleanup at the end of every lesson keeps the machine in a predictable state for the next verification run.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/db_first.py`](starter/db_first.py)
- [`starter/kafka_first.py`](starter/kafka_first.py)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`starter/setup.sh`](starter/setup.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m06l01/m06l01-08/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   docker rm -f m06l01-broker m06l01-db
   docker network rm m06l01-net
   ```
4. Edit `session.sh` and check it: `bash -n session.sh`.
5. Check it from the repository root: `./check m06l01-08`.

## How to check

`./check m06l01-08` copies `starter/` into a scratch directory and runs `bash -n session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the shell script parses (`bash -n`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m06l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
