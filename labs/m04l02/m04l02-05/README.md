# m04l02-05 · Deduplicating consumer with a persistent seen-set

**Lesson:** [Idempotent Consumers And Deduplication Keys](https://learnsome.tech/learn/kafka-course/m04l02) (lesson 4.2, module 4: Delivery Guarantees And Transactions) · Pro  
**Check:** Checker

## Goal

You can implement a consumer that skips duplicate events using an event identifier in the record value, and explain when a deduplication table is necessary versus when natural idempotence is sufficient.

In the lesson: The consumer loads a seen-set from a file at startup, then reads the topic from the earliest offset. For each record, it extracts the event identifier from the value and checks the set. If the identifier is already present, the record is counted as skipped but no downstream action is taken. At the end, the updated set is written back to the same file so the next run starts with the same knowledge. The result confirms that the consumer processed three and skipped two, which are the two identifiers it found already in the set. The file persists across restarts because it is mounted from the host working directory through the volume flag.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/dedup.py`](starter/dedup.py): the listing from the lesson
- [`starter/producer.py`](starter/producer.py)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/setup.sh`](starter/setup.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m04l02/m04l02-05/starter`
2. Read `dedup.py`.
3. Edit `dedup.py` and check it: `python3 -m py_compile dedup.py`.
4. Check it from the repository root: `./check m04l02-05`.

## How to check

`./check m04l02-05` copies `starter/` into a scratch directory and runs `python3 -m py_compile dedup.py` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the Python program compiles (`python3 -m py_compile`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m04l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
