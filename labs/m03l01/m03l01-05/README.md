# m03l01-05 · Run the consumer and read the records back

**Lesson:** [A Consumer In Python](https://learnsome.tech/learn/kafka-course/m03l01) (lesson 3.1, module 3: Consumers And Consumer Groups) · Pro  
**Check:** Read along

## Goal

You can write a KafkaConsumer in Python that reads from the beginning of a topic, prints partition, offset, key and value for every record, and exits automatically when the topic goes quiet.

In the lesson: The container mounts the working directory into slash app so the Python file written in the previous step is available at runtime. The consumer joins the group named m-zero-three-l-zero-one-readers, receives partition zero as its sole assignment, and begins reading from offset zero because the group has never committed. Each of the three records comes back with the exact key and value we produced. The first record is partition zero, offset zero, key u-one, value login. The second is offset one, key u-two, value signup. The third is offset two, key u-one again, value logout. Three seconds then pass with no new records, the consumer-timeout fires, and the script closes the connection and exits. The output is deterministic because a single-partition topic preserves the exact order records were produced, and the group has never moved its offset.

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
   docker run --rm --network m03l01-net -v $PWD:/app m03l01-client python consumer.py
   ```

## How to check

**Read along.** It needs Docker (or another container engine), which the lab sandbox does not have. Run it on a machine with Docker installed.

There is nothing to check: `./check m03l01-05` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m03l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
