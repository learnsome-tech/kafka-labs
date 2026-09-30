# m07l03-03 · Stop one broker and confirm the topic stays up

**Lesson:** [Losing A Broker](https://learnsome.tech/learn/kafka-course/m07l03) (lesson 7.3, module 7: Operating A Cluster) · Pro  
**Check:** Checker

## Goal

You can stop a broker, confirm a new leader is elected and the topic stays available, restart the broker and verify it rejoins, and explain why two broker failures block acks-all writes.

In the lesson: Stop broker three; the container name echoes back as confirmation. Sleep ten seconds for the Raft election to settle, then store the exec prefix. Describe the topic partitions: the EPOCH column shows a higher number for any partition that moved to a new leader. The REPLICAS column still lists all three broker identifiers, reflecting the configured set rather than which brokers are alive. Produce a record to the topic: it still works because two brokers remain in the ISR, satisfying the minimum. The consumer reads the record back; the timeout wrapper only guards against a learner waiting forever if the write had failed. The cluster continues serving both reads and writes after losing one broker.

## Files

- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`starter/setup.sh`](starter/setup.sh)
- [`starter/start-m07l03.sh`](starter/start-m07l03.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m07l03/m07l03-03/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   docker stop m07l03-b3
   sleep 10
   B="docker exec -i m07l03-b1"
   $B rpk topic describe m07l03-orders -p
   echo k1:v1 | $B rpk topic produce m07l03-orders -f '%k:%v\n'
   $B timeout 30 rpk topic consume m07l03-orders -n1 -f '%k %v\n'
   ```
4. Edit `session.sh` and check it: `bash -n session.sh`.
5. Check it from the repository root: `./check m07l03-03`.

## How to check

`./check m07l03-03` copies `starter/` into a scratch directory and runs `bash -n session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the shell script parses (`bash -n`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m07l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
