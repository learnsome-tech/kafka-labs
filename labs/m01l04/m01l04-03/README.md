# m01l04-03 · Produce five records

**Lesson:** [Offsets: Position, Not Acknowledgement](https://learnsome.tech/learn/kafka-course/m01l04) (lesson 1.4, module 1: The Log: Topics, Partitions And Offsets) · Free  
**Check:** Read along

## Goal

You can consume a topic from a specific offset, demonstrate that two independent consumers see the same records at the same offsets, and explain why the offset belongs to the record and not to the reader.

In the lesson: We wait for the broker to start up, create a single-partition topic and produce five records. The values are event-a through event-e: the letter suffix makes each record easy to identify in the consume output. Five records give us enough offsets to demonstrate consuming from the middle of the log without the example feeling too small. We produce one record per invocation, piping a different value each time. After the produces complete, the topic contains five records at offsets zero through four, all in partition zero. The broker holds them on disk exactly as written; nothing in the produce step changes whether they are readable by consumers.

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
   sleep 6
   docker exec $B rpk topic create $T -p 1
   echo event-a | docker exec -i $B rpk topic produce $T
   echo event-b | docker exec -i $B rpk topic produce $T
   echo event-c | docker exec -i $B rpk topic produce $T
   echo event-d | docker exec -i $B rpk topic produce $T
   echo event-e | docker exec -i $B rpk topic produce $T
   ```

## How to check

**Read along.** It needs Docker (or another container engine), which the lab sandbox does not have. Run it on a machine with Docker installed.

There is nothing to check: `./check m01l04-03` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m01l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
