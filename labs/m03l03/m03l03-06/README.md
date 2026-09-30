# m03l03-06 · Read and commit, confirm the position is saved

**Lesson:** [Committing Offsets: Auto, Manual And Lag](https://learnsome.tech/learn/kafka-course/m03l03) (lesson 3.3, module 3: Consumers And Consumer Groups) · Pro  
**Check:** Read along

## Goal

You can configure a KafkaConsumer to commit offsets manually, observe the lag a consumer group carries before committing, and confirm that a second run resumes from the committed position.

In the lesson: This time the commit flag is present. The consumer reads the same four records from the beginning, because the previous run left no committed offset: auto-offset-reset still applies. After the for loop ends, the script calls commit, which writes the current position to the broker. Calling commit without arguments commits every assigned partition simultaneously; there is no per-message fine-grained commit in this version of kafka-python. The current position after reading offset three is offset four, which is what the broker stores. The final line confirms the commit happened. Running the consumer again now would find nothing: the log-end-offset is four and the committed-offset is four, so the lag is zero.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/consumer.py`](starter/consumer.py): the listing from the lesson
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/setup.sh`](starter/setup.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/consumer.py` alongside the lesson.
2. On a machine that has what it needs, the lesson ran it with:

   ```sh
   bash setup.sh >/dev/null 2>&1
   docker run --rm --network m03l03-net -v $PWD:/app m03l03-client python consumer.py --commit
   ```

## How to check

**Read along.** It needs Docker (or another container engine), which the lab sandbox does not have. Run it on a machine with Docker installed.

There is nothing to check: `./check m03l03-06` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m03l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
