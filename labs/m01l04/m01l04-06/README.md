# m01l04-06 · Read from the middle of the log

**Lesson:** [Offsets: Position, Not Acknowledgement](https://learnsome.tech/learn/kafka-course/m01l04) (lesson 1.4, module 1: The Log: Topics, Partitions And Offsets) · Free  
**Check:** Read along

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

1. Read `starter/session.sh` alongside the lesson.
2. On a machine that has what it needs, the lesson ran it with:

   ```sh
   bash setup.sh >/dev/null 2>&1
   B=m01l04-broker
   T=m01l04-events
   docker exec $B rpk topic consume $T -f '%o %v
   ' -o 3 --num 2
   ```

## How to check

**Read along.** It needs Docker (or another container engine), which the lab sandbox does not have. Run it on a machine with Docker installed.

There is nothing to check: `./check m01l04-06` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m01l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
