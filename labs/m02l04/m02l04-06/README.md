# m02l04-06 · Verify record count and clean up

**Lesson:** [Batching, Linger And Throughput](https://learnsome.tech/learn/kafka-course/m02l04) (lesson 2.4, module 2: Producers: Keys, Batches And Acks) · Pro  
**Check:** Read along

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

1. Read `starter/session.sh` alongside the lesson.
2. On a machine that has what it needs, the lesson ran it with:

   ```sh
   bash setup.sh >/dev/null 2>&1
   B=m02l04-broker
   docker exec $B rpk topic describe m02l04-ev -p
   docker rm -f m02l04-broker
   docker network rm m02l04-net
   ```

## How to check

**Read along.** It needs Docker (or another container engine), which the lab sandbox does not have. Run it on a machine with Docker installed.

There is nothing to check: `./check m02l04-06` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m02l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
