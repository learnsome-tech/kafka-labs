# m06l02-07 · Run the relay a second time: nothing is republished

**Lesson:** [The Transactional Outbox](https://learnsome.tech/learn/kafka-course/m06l02) (lesson 6.2, module 6: Event-Driven: Outbox, CDC, Compaction) · Pro  
**Check:** Checker

## Goal

You can implement a transactional outbox that writes a business row and an event record in a single database transaction, build a relay that publishes unpublished rows to Kafka and marks them published, and confirm that a second relay run produces no duplicates.

In the lesson: Running the relay again shows zero events relayed. The select query finds no rows where published is false, so the loop body never executes and nothing is sent to Kafka. The idempotence comes from the published flag: once a row is marked, the relay skips it without re-publishing. This is the property that makes the outbox safe to run repeatedly, whether by a scheduler, a polling loop, or a restart after a crash.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/populate.py`](starter/populate.py)
- [`starter/relay.py`](starter/relay.py): the listing from the lesson
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/setup.sh`](starter/setup.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m06l02/m06l02-07/starter`
2. Read `relay.py`.
3. Edit `relay.py` and check it: `python3 -m py_compile relay.py`.
4. Check it from the repository root: `./check m06l02-07`.

## How to check

`./check m06l02-07` copies `starter/` into a scratch directory and runs `python3 -m py_compile relay.py` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the Python program compiles (`python3 -m py_compile`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m06l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
