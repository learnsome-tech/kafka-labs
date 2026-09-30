# m03l01-03 · Create the topic and produce three records

**Lesson:** [A Consumer In Python](https://learnsome.tech/learn/kafka-course/m03l01) (lesson 3.1, module 3: Consumers And Consumer Groups) · Pro  
**Check:** Read along

## Goal

You can write a KafkaConsumer in Python that reads from the beginning of a topic, prints partition, offset, key and value for every record, and exits automatically when the topic goes quiet.

In the lesson: We store the broker name and topic name in shell variables so the produce commands stay short enough to fit on one line. The topic-create command gives the broker a single-partition topic, which means every record lands in partition zero and insertion order is preserved exactly. Each produce command pipes one word through to rpk's standard input; the key flag attaches a named sender to each value. Both the key and value are stored as raw bytes in the log. The timestamp printed by rpk changes on every run, so we move past that output and read the records through the Python consumer instead.

## Files

- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`starter/setup.sh`](starter/setup.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/session.sh` alongside the lesson.
2. On a machine that has what it needs, the lesson ran it with:

   ```sh
   bash setup.sh >/dev/null 2>&1
   B=m03l01-broker ; T=m03l01-events
   docker exec m03l01-broker rpk topic create m03l01-events
   echo login | docker exec -i $B rpk topic produce $T --key u1
   echo signup | docker exec -i $B rpk topic produce $T --key u2
   echo logout | docker exec -i $B rpk topic produce $T --key u1
   ```

## How to check

**Read along.** It needs Docker (or another container engine), which the lab sandbox does not have. Run it on a machine with Docker installed.

There is nothing to check: `./check m03l01-03` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m03l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
