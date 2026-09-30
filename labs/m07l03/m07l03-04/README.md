# m07l03-04 · Restart the stopped broker and verify rejoining

**Lesson:** [Losing A Broker](https://learnsome.tech/learn/kafka-course/m07l03) (lesson 7.3, module 7: Operating A Cluster) · Pro  
**Check:** Checker

## Goal

You can stop a broker, confirm a new leader is elected and the topic stays available, restart the broker and verify it rejoins, and explain why two broker failures block acks-all writes.

In the lesson: Use docker start to restart the stopped container. Start reuses the existing container and its data directory intact, so the broker rejoins with the same identifier it had before. Docker run would create a fresh container and a new data directory, joining as a brand new node with a higher identifier and no stored partition data. Sleep eight seconds to let the broker replay the records it missed. Check cluster info: all three appear in the broker table. The ISR re-expands as the broker catches up with the leader log, restoring full redundancy to every partition without any manual intervention.

## Files

- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`starter/setup.sh`](starter/setup.sh)
- [`starter/start-m07l03.sh`](starter/start-m07l03.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m07l03/m07l03-04/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   docker start m07l03-b3
   sleep 8
   B="docker exec m07l03-b1"
   $B rpk cluster info
   ```
4. Edit `session.sh` and check it: `bash -n session.sh`.
5. Check it from the repository root: `./check m07l03-04`.

## How to check

`./check m07l03-04` copies `starter/` into a scratch directory and runs `bash -n session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the shell script parses (`bash -n`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m07l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
