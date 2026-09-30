# m03l03-06 · Read and commit, confirm the position is saved

**Lesson:** [Committing Offsets: Auto, Manual And Lag](https://learnsome.tech/learn/kafka-course/m03l03) (lesson 3.3, module 3: Consumers And Consumer Groups) · Pro  
**Check:** Checker

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

1. Go to the starter: `cd labs/m03l03/m03l03-06/starter`
2. Read `consumer.py`.
3. Edit `consumer.py` and check it: `python3 -m py_compile consumer.py`.
4. Check it from the repository root: `./check m03l03-06`.

## How to check

`./check m03l03-06` copies `starter/` into a scratch directory and runs `python3 -m py_compile consumer.py` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the Python program compiles (`python3 -m py_compile`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m03l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
