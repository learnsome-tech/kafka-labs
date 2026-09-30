# m05l04-05 · V-two producer: adds a currency field to every record

**Lesson:** [Evolving An Event Without Breaking Consumers](https://learnsome.tech/learn/kafka-course/m05l04) (lesson 5.4, module 5: Schemas, Serialisation And Evolution) · Pro  
**Check:** Checker

## Goal

You can produce a v-one event and a v-two event with an extra optional field to the same topic, show that the v-one consumer code processes both without error, and explain why renaming a field is a breaking change while adding one is not.

In the lesson: The v-two producer sends two more records. These records include a third field: currency, set to the string USD. The ID and amount fields remain unchanged. The new field is optional from the consumer's perspective: no existing contract requires consumers to read it. The topic now holds four records in total across offsets zero through three. Records zero and one have the v-one shape; records two and three have the v-two shape.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/setup.sh`](starter/setup.sh)
- [`starter/v1_consumer.py`](starter/v1_consumer.py)
- [`starter/v1_producer.py`](starter/v1_producer.py)
- [`starter/v2_producer.py`](starter/v2_producer.py): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m05l04/m05l04-05/starter`
2. Read `v2_producer.py`.
3. Edit `v2_producer.py` and check it: `python3 -m py_compile v2_producer.py`.
4. Check it from the repository root: `./check m05l04-05`.

## How to check

`./check m05l04-05` copies `starter/` into a scratch directory and runs `python3 -m py_compile v2_producer.py` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the Python program compiles (`python3 -m py_compile`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m05l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
