# m01l04-06 · Read from the middle of the log

**Lesson:** [Offsets: Position, Not Acknowledgement](https://learnsome.tech/learn/kafka-course/m01l04) (lesson 1.4, module 1: The Log: Topics, Partitions And Offsets) · Free  
**Check:** Checker

## Goal

You can consume a topic from a specific offset, demonstrate that two independent consumers see the same records at the same offsets, and explain why the offset belongs to the record and not to the reader.

In the lesson: Now we demonstrate starting a consumer mid-stream. Instead of offset zero, we pass offset three, and we ask for two records. The output shows offsets three and four: event-d and event-e. The first three records, at offsets zero through two, were not read in this session, but they are still in the log. A consumer that starts at offset three is not seeing new records; it is reading from a specific address in the log as if it had already processed the first three records. This is how a consumer that crashed and restarted would resume: it stores its last committed offset and picks up exactly where it left off rather than reprocessing or skipping anything.

## Files

- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`starter/setup.sh`](starter/setup.sh)
- [`starter/start.sh`](starter/start.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m01l04/m01l04-06/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   B=m01l04-broker
   T=m01l04-events
   docker exec $B rpk topic consume $T -f '%o %v
   ' -o 3 --num 2
   ```
4. Edit `session.sh` and check it: `bash -n session.sh`.
5. Check it from the repository root: `./check m01l04-06`.

## How to check

`./check m01l04-06` copies `starter/` into a scratch directory and runs `bash -n session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the shell script parses (`bash -n`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m01l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
