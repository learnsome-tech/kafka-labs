# m02l03-04 · Run the acks comparison

**Lesson:** [Acknowledgements: What Acks Means For Durability](https://learnsome.tech/learn/kafka-course/m02l03) (lesson 2.3, module 2: Producers: Keys, Batches And Acks) · Pro  
**Check:** Checker

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

1. Go to the starter: `cd labs/m02l03/m02l03-04/starter`
2. Read `run.sh`.
3. Edit `run.sh` and check it: `bash -n run.sh`.
4. Check it from the repository root: `./check m02l03-04`.

## How to check

`./check m02l03-04` copies `starter/` into a scratch directory and runs `bash -n run.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the shell script parses (`bash -n`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m02l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
