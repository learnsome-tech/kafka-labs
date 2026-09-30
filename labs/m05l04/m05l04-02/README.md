# m05l04-02 · Start the broker, build the client, create the topic

**Lesson:** [Evolving An Event Without Breaking Consumers](https://learnsome.tech/learn/kafka-course/m05l04) (lesson 5.4, module 5: Schemas, Serialisation And Evolution) · Pro  
**Check:** Checker

## Goal

You can produce a v-one event and a v-two event with an extra optional field to the same topic, show that the v-one consumer code processes both without error, and explain why renaming a field is a breaking change while adding one is not.

In the lesson: The setup creates the network, starts the broker, builds the kafka-python client image, and creates the events topic. All four resources share the lesson prefix so they cannot conflict with anything another lesson is running on the same machine. The topic uses a single partition so that all records from both the v-one and the v-two producer land in the same ordered log, which lets the consumer read them in production order.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/setup.sh`](starter/setup.sh): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m05l04/m05l04-02/starter`
2. Read `setup.sh`.
3. Edit `setup.sh` and check it: `bash -n setup.sh`.
4. Check it from the repository root: `./check m05l04-02`.

## How to check

`./check m05l04-02` copies `starter/` into a scratch directory and runs `bash -n setup.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the shell script parses (`bash -n`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m05l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
