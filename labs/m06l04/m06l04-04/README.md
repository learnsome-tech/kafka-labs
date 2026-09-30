# m06l04-04 · Read the full log before compaction

**Lesson:** [Log Compaction: A Topic As A Table](https://learnsome.tech/learn/kafka-course/m06l04) (lesson 6.4, module 6: Event-Driven: Outbox, CDC, Compaction) · Pro  
**Check:** Checker

## Goal

You can create a compacted Kafka topic, produce multiple updates for the same key, fold the full log into a key-value table in Python, and explain why compaction converges the log to the same result over time.

In the lesson: The consume output shows all six records in arrival order, starting from offset zero. Apple appears three times, banana twice, and cherry once. This is the raw log before any compaction has run. The broker will converge this to three records eventually: one per key, holding the latest price for each.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/produce_prices.py`](starter/produce_prices.py)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`starter/setup.sh`](starter/setup.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m06l04/m06l04-04/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   B=m06l04-broker T=m06l04-prices
   docker exec $B rpk topic consume $T -f '%k %v\n' -o 0 --num 6
   ```
4. Edit `session.sh` and check it: `bash -n session.sh`.
5. Check it from the repository root: `./check m06l04-04`.

## How to check

`./check m06l04-04` copies `starter/` into a scratch directory and runs `bash -n session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the shell script parses (`bash -n`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m06l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
