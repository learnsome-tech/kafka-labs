# m02l04-04 · Run the no-batch producer

**Lesson:** [Batching, Linger And Throughput](https://learnsome.tech/learn/kafka-course/m02l04) (lesson 2.4, module 2: Producers: Keys, Batches And Acks) · Pro  
**Check:** Checker

## Goal

You can configure batch-size, linger-ms, and compression-type on a KafkaProducer and explain what each setting trades against to increase throughput.

In the lesson: The single output line confirms that all ten records were dispatched and acknowledged. Because the program calls flush before printing, the confirmation message appears only after the broker has responded to every request. The ten round trips happened over the connection in the background; the program does not print per-record metadata here because the point of this run is the delivery count, not the individual offsets. The second producer will send another ten records to the same topic with a completely different batching profile.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/no-batch.py`](starter/no-batch.py)
- [`starter/run-nb.sh`](starter/run-nb.sh): the listing from the lesson
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/setup.sh`](starter/setup.sh)
- [`starter/start.sh`](starter/start.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m02l04/m02l04-04/starter`
2. Read `run-nb.sh`.
3. Edit `run-nb.sh` and check it: `bash -n run-nb.sh`.
4. Check it from the repository root: `./check m02l04-04`.

## How to check

`./check m02l04-04` copies `starter/` into a scratch directory and runs `bash -n run-nb.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the shell script parses (`bash -n`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m02l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
