# m01l04-03 · Produce five records

**Lesson:** [Offsets: Position, Not Acknowledgement](https://learnsome.tech/learn/kafka-course/m01l04) (lesson 1.4, module 1: The Log: Topics, Partitions And Offsets) · Free  
**Check:** Checker

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

1. Go to the starter: `cd labs/m01l04/m01l04-03/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
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
4. Edit `session.sh` and check it: `bash -n session.sh`.
5. Check it from the repository root: `./check m01l04-03`.

## How to check

`./check m01l04-03` copies `starter/` into a scratch directory and runs `bash -n session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the shell script parses (`bash -n`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m01l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
