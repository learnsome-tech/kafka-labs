# m02l04-05 · Batched producer with gzip compression

**Lesson:** [Batching, Linger And Throughput](https://learnsome.tech/learn/kafka-course/m02l04) (lesson 2.4, module 2: Producers: Keys, Batches And Acks) · Pro  
**Check:** Read along

## Goal

You can configure batch-size, linger-ms, and compression-type on a KafkaProducer and explain what each setting trades against to increase throughput.

In the lesson: The batched producer allows up to sixteen thousand three hundred and eighty-four bytes per batch and waits up to fifty milliseconds before dispatching. With ten short records, all ten fit inside a single batch and travel to the broker in one network request instead of ten. The gzip compression-type compresses the entire batch before sending: the repeated prefix in each value, the word msg followed by a hyphen, compresses efficiently because the pattern appears across all ten records. The output line confirms all ten records were delivered, the same result as the no-batch producer. The difference is the number of round trips: the batched version made one where the other made ten.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/batch.py`](starter/batch.py): the listing from the lesson
- [`starter/no-batch.py`](starter/no-batch.py)
- [`starter/run-nb.sh`](starter/run-nb.sh)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/setup.sh`](starter/setup.sh)
- [`starter/start.sh`](starter/start.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/batch.py` alongside the lesson.
2. On a machine that has what it needs, the lesson ran it with:

   ```sh
   bash setup.sh >/dev/null 2>&1
   docker run --rm --network m02l04-net -v "$PWD:/app" m02l04-client python batch.py
   ```

## How to check

**Read along.** It needs Docker (or another container engine), which the lab sandbox does not have. Run it on a machine with Docker installed.

There is nothing to check: `./check m02l04-05` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m02l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
