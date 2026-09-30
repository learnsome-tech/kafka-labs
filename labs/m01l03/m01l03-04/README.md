# m01l03-04 · Consume the keyed records

**Lesson:** [Topics, Partitions And Where A Record Lands](https://learnsome.tech/learn/kafka-course/m01l03) (lesson 1.3, module 1: The Log: Topics, Partitions And Offsets) · Free  
**Check:** Checker

## Goal

You can create a topic with multiple partitions, produce keyed records and confirm they always land on the same partition, and explain why unkeyed records do not carry ordering guarantees.

In the lesson: Here is the consume output for the three records we just produced. The format string prints the key and value for each record, without offset or partition information. All three records show the key k-one, and they appear in the order a, b, c, which is the order they were produced. This ordering is guaranteed because all three records went to the same partition: records within a single partition have a strict order determined by offset. If records had gone to different partitions, we could not make any claim about their relative order across partitions. This is the fundamental trade-off: keys give you ordering guarantees within a partition but constrain all records with the same key to one partition's throughput.

## Files

- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`starter/setup.sh`](starter/setup.sh)
- [`starter/start.sh`](starter/start.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m01l03/m01l03-04/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   B=m01l03-broker
   T=m01l03-orders
   docker exec $B rpk topic consume $T -f '%k %v
   ' -o 0 --num 3
   ```
4. Edit `session.sh` and check it: `bash -n session.sh`.
5. Check it from the repository root: `./check m01l03-04`.

## How to check

`./check m01l03-04` copies `starter/` into a scratch directory and runs `bash -n session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the shell script parses (`bash -n`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m01l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
