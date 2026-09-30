# m01l01-04 · A second reader sees the same records

**Lesson:** [Why A Log And Not A Queue](https://learnsome.tech/learn/kafka-course/m01l01) (lesson 1.1, module 1: The Log: Topics, Partitions And Offsets) · Free  
**Check:** Checker

## Goal

You can explain why Kafka uses an append-only log rather than a delete-on-read queue, produce records to a topic, and consume them independently from two separate sessions.

In the lesson: Here is what distinguishes a log from a queue. We run the same consume command in a fresh shell, and the same three records come back at the same three offsets. In a message queue this would be impossible: reading removes the record so a second reader sees nothing. In a log, records live at fixed offsets until the retention policy removes them, and any number of readers can return to any offset at any time. This is what makes Kafka useful when more than one service needs the same stream. An audit service, a search indexer and a notification pipeline can all read the same topic without any of them interfering with the others. The offset is a position in the log, not a delivery receipt.

## Files

- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`starter/setup.sh`](starter/setup.sh)
- [`starter/start.sh`](starter/start.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m01l01/m01l01-04/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   B=m01l01-broker
   T=m01l01-events
   docker exec $B rpk topic consume $T -f '%o %v
   ' -o 0 --num 3
   ```
4. Edit `session.sh` and check it: `bash -n session.sh`.
5. Check it from the repository root: `./check m01l01-04`.

## How to check

`./check m01l01-04` copies `starter/` into a scratch directory and runs `bash -n session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the shell script parses (`bash -n`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m01l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
