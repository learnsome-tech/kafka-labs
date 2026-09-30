# m02l04-03 · No-batch producer with batch-size one

**Lesson:** [Batching, Linger And Throughput](https://learnsome.tech/learn/kafka-course/m02l04) (lesson 2.4, module 2: Producers: Keys, Batches And Acks) · Pro  
**Check:** Checker

## Goal

You can configure batch-size, linger-ms, and compression-type on a KafkaProducer and explain what each setting trades against to increase throughput.

In the lesson: Setting batch-size to one forces the producer to treat each record as its own batch, which means every record travels in a separate network request. Setting linger-ms to zero removes any waiting; the producer dispatches the moment a record is ready. Together these two settings maximize the number of round trips to the broker: ten records produce ten separate requests. The program sends all ten without calling get after each one, so the sends pipeline over a single connection; flush waits for all ten to be acknowledged before returning. This is the baseline for the comparison: maximum round trips, minimum batch efficiency, all ten records confirmed. The client image is built at this step and reused when running the second producer.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/no-batch.py`](starter/no-batch.py): the listing from the lesson
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/setup.sh`](starter/setup.sh)
- [`starter/start.sh`](starter/start.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m02l04/m02l04-03/starter`
2. Read `no-batch.py`.
3. Edit `no-batch.py` and check it: `python3 -m py_compile no-batch.py`.
4. Check it from the repository root: `./check m02l04-03`.

## How to check

`./check m02l04-03` copies `starter/` into a scratch directory and runs `python3 -m py_compile no-batch.py` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the Python program compiles (`python3 -m py_compile`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m02l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
