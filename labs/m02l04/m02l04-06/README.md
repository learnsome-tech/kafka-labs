# m02l04-06 · Verify record count and clean up

**Lesson:** [Batching, Linger And Throughput](https://learnsome.tech/learn/kafka-course/m02l04) (lesson 2.4, module 2: Producers: Keys, Batches And Acks) · Pro  
**Check:** Checker

## Goal

You can configure batch-size, linger-ms, and compression-type on a KafkaProducer and explain what each setting trades against to increase throughput.

In the lesson: The partition description shows a high-watermark of twenty, confirming that both producers delivered all their records. Partition zero holds records at offsets zero through nineteen. Ten came from the no-batch producer and ten came from the batched producer, but the topic does not distinguish between them; the bytes are identical. The describe command also shows the partition leader and the replica set, both pointing to broker zero because this is a single-node cluster. After verifying the record count, the session removes the broker and the network to leave the daemon in a clean state.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/batch.py`](starter/batch.py)
- [`starter/no-batch.py`](starter/no-batch.py)
- [`starter/run-nb.sh`](starter/run-nb.sh)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`starter/setup.sh`](starter/setup.sh)
- [`starter/start.sh`](starter/start.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m02l04/m02l04-06/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   B=m02l04-broker
   docker exec $B rpk topic describe m02l04-ev -p
   docker rm -f m02l04-broker
   docker network rm m02l04-net
   ```
4. Edit `session.sh` and check it: `bash -n session.sh`.
5. Check it from the repository root: `./check m02l04-06`.

## How to check

`./check m02l04-06` copies `starter/` into a scratch directory and runs `bash -n session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the shell script parses (`bash -n`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m02l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
