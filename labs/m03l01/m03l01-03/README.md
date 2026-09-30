# m03l01-03 · Create the topic and produce three records

**Lesson:** [A Consumer In Python](https://learnsome.tech/learn/kafka-course/m03l01) (lesson 3.1, module 3: Consumers And Consumer Groups) · Pro  
**Check:** Checker

## Goal

You can write a KafkaConsumer in Python that reads from the beginning of a topic, prints partition, offset, key and value for every record, and exits automatically when the topic goes quiet.

In the lesson: We store the broker name and topic name in shell variables so the produce commands stay short enough to fit on one line. The topic-create command gives the broker a single-partition topic, which means every record lands in partition zero and insertion order is preserved exactly. Each produce command pipes one word through to rpk's standard input; the key flag attaches a named sender to each value. Both the key and value are stored as raw bytes in the log. The timestamp printed by rpk changes on every run, so we move past that output and read the records through the Python consumer instead.

## Files

- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`starter/setup.sh`](starter/setup.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m03l01/m03l01-03/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   B=m03l01-broker ; T=m03l01-events
   docker exec m03l01-broker rpk topic create m03l01-events
   echo login | docker exec -i $B rpk topic produce $T --key u1
   echo signup | docker exec -i $B rpk topic produce $T --key u2
   echo logout | docker exec -i $B rpk topic produce $T --key u1
   ```
4. Edit `session.sh` and check it: `bash -n session.sh`.
5. Check it from the repository root: `./check m03l01-03`.

## How to check

`./check m03l01-03` copies `starter/` into a scratch directory and runs `bash -n session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the shell script parses (`bash -n`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m03l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
