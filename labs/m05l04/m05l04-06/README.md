# m05l04-06 · V-one consumer re-runs: processes v-two records too

**Lesson:** [Evolving An Event Without Breaking Consumers](https://learnsome.tech/learn/kafka-course/m05l04) (lesson 5.4, module 5: Schemas, Serialisation And Evolution) · Pro  
**Check:** Read along

## Goal

You can produce a v-one event and a v-two event with an extra optional field to the same topic, show that the v-one consumer code processes both without error, and explain why renaming a field is a breaking change while adding one is not.

In the lesson: Re-running the same v-one consumer after the v-two producer has written to the topic shows all four records. Records three and four were written by the v-two producer and include the currency field, but the v-one consumer only accesses ID and amount. Python's dictionary access ignores any extra keys in the deserialized JSON object, so the consumer processes those records without any error or warning. This is the essential property of a backward-compatible addition: existing consumers continue to function correctly against new records because they only read the fields they need.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/setup.sh`](starter/setup.sh)
- [`starter/v1_consumer.py`](starter/v1_consumer.py): the listing from the lesson
- [`starter/v1_producer.py`](starter/v1_producer.py)
- [`starter/v2_producer.py`](starter/v2_producer.py)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/v1_consumer.py` alongside the lesson.
2. On a machine that has what it needs, the lesson ran it with:

   ```sh
   bash setup.sh >/dev/null 2>&1
   docker run --rm --network m05l04-net -v "$PWD:/app" m05l04-client python v1_consumer.py
   ```

## How to check

**Read along.** It needs Docker (or another container engine), which the lab sandbox does not have. Run it on a machine with Docker installed.

There is nothing to check: `./check m05l04-06` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m05l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
