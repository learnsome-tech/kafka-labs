# m01l04-05 · Consumer B reads the same five records

**Lesson:** [Offsets: Position, Not Acknowledgement](https://learnsome.tech/learn/kafka-course/m01l04) (lesson 1.4, module 1: The Log: Topics, Partitions And Offsets) · Free  
**Check:** Read along

## Goal

You can consume a topic from a specific offset, demonstrate that two independent consumers see the same records at the same offsets, and explain why the offset belongs to the record and not to the reader.

In the lesson: Consumer B runs the identical consume command in yet another fresh shell. The output is exactly the same as consumer A: offsets zero through four, each paired with the same value. Neither consumer affected the other, and neither affected the log. This is the direct demonstration of the lesson title: the offset is a position, not a receipt. A receipt in a queue means the record is gone; an offset in a log means the record is at a known address that any reader can reach independently. The num flag ensures both consumers exit cleanly after reading exactly five records rather than waiting indefinitely for more data to arrive.

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
   ' -o 0 --num 5
   ```

## How to check

**Read along.** It needs Docker (or another container engine), which the lab sandbox does not have. Run it on a machine with Docker installed.

There is nothing to check: `./check m01l04-05` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m01l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
