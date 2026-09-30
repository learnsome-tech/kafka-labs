# m02l03-04 · Run the acks comparison

**Lesson:** [Acknowledgements: What Acks Means For Durability](https://learnsome.tech/learn/kafka-course/m02l03) (lesson 2.3, module 2: Producers: Keys, Batches And Acks) · Pro  
**Check:** Read along

## Goal

You can set acks on a KafkaProducer to zero, one, or all, explain what each level waits for, and describe what min-insync-replicas does when a write requires confirmation from more replicas than are currently available.

In the lesson: The first line confirms that acks zero returns immediately with no metadata. The second and third lines show that both acks one and acks all produced offset zero in partition zero; the offsets are identical because the records went to separate topics that each started fresh. The significant difference is invisible in the output: acks one resolved when the leader wrote the record; acks all resolved when every in-sync replica wrote it. On a cluster with three brokers and a replication factor of three, acks all would have waited for three confirmations instead of one. The output on screen would look the same, but the durability guarantee would be meaningfully stronger.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/acks.py`](starter/acks.py)
- [`starter/run.sh`](starter/run.sh): the listing from the lesson
- [`starter/setup.sh`](starter/setup.sh)
- [`starter/start.sh`](starter/start.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/run.sh` alongside the lesson.
2. On a machine that has what it needs, the lesson ran it with:

   ```sh
   bash setup.sh >/dev/null 2>&1
   bash run.sh
   ```

## How to check

**Read along.** The listing does not run cleanly in the lab sandbox (it relies on something the sandbox cannot provide), so the site shows it read-only.

There is nothing to check: `./check m02l03-04` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m02l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
