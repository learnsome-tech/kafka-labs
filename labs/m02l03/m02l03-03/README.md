# m02l03-03 · Demonstrate all three ack levels

**Lesson:** [Acknowledgements: What Acks Means For Durability](https://learnsome.tech/learn/kafka-course/m02l03) (lesson 2.3, module 2: Producers: Keys, Batches And Acks) · Pro  
**Check:** Checker

## Goal

You can set acks on a KafkaProducer to zero, one, or all, explain what each level waits for, and describe what min-insync-replicas does when a write requires confirmation from more replicas than are currently available.

In the lesson: The program creates three separate producer instances, each with a different acks value, and sends to three different topics so there is no interference between them. The first producer uses acks zero. It calls send, then flush to push the bytes onto the network, then prints a message without calling get, because with acks zero there is nothing to wait for. The second producer uses acks one. It calls get on the returned future and receives the partition and offset once the leader has confirmed the write. The third producer uses acks equal to the string all. It also blocks on get and receives the same metadata, but this time the future resolves only after the full in-sync replica set has written the record. On a single-node cluster the in-sync set has exactly one member, so acks all behaves identically to acks one here.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/acks.py`](starter/acks.py): the listing from the lesson
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/setup.sh`](starter/setup.sh)
- [`starter/start.sh`](starter/start.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m02l03/m02l03-03/starter`
2. Read `acks.py`.
3. Edit `acks.py` and check it: `python3 -m py_compile acks.py`.
4. Check it from the repository root: `./check m02l03-03`.

## How to check

`./check m02l03-03` copies `starter/` into a scratch directory and runs `python3 -m py_compile acks.py` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the Python program compiles (`python3 -m py_compile`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m02l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
