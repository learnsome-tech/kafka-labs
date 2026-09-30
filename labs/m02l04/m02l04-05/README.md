# m02l04-05 · Batched producer with gzip compression

**Lesson:** [Batching, Linger And Throughput](https://learnsome.tech/learn/kafka-course/m02l04) (lesson 2.4, module 2: Producers: Keys, Batches And Acks) · Pro  
**Check:** Checker

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

1. Go to the starter: `cd labs/m02l04/m02l04-05/starter`
2. Read `batch.py`.
3. Edit `batch.py` and check it: `python3 -m py_compile batch.py`.
4. Check it from the repository root: `./check m02l04-05`.

## How to check

`./check m02l04-05` copies `starter/` into a scratch directory and runs `python3 -m py_compile batch.py` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the Python program compiles (`python3 -m py_compile`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m02l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
