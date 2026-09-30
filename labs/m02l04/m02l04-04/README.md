# m02l04-04 · Run the no-batch producer

**Lesson:** [Batching, Linger And Throughput](https://learnsome.tech/learn/kafka-course/m02l04) (lesson 2.4, module 2: Producers: Keys, Batches And Acks) · Pro  
**Check:** Read along

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

1. Read `starter/run-nb.sh` alongside the lesson.
2. On a machine that has what it needs, the lesson ran it with:

   ```sh
   bash setup.sh >/dev/null 2>&1
   bash run-nb.sh
   ```

## How to check

**Read along.** It needs Docker (or another container engine), which the lab sandbox does not have. Run it on a machine with Docker installed.

There is nothing to check: `./check m02l04-04` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m02l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
