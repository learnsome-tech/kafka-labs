# m05l04-04 · V-one consumer: reads the two v-one records

**Lesson:** [Evolving An Event Without Breaking Consumers](https://learnsome.tech/learn/kafka-course/m05l04) (lesson 5.4, module 5: Schemas, Serialisation And Evolution) · Pro  
**Check:** Read along

## Goal

You can produce a v-one event and a v-two event with an extra optional field to the same topic, show that the v-one consumer code processes both without error, and explain why renaming a field is a breaking change while adding one is not.

In the lesson: The v-one consumer reads from the earliest offset, extracts the ID and amount fields from each record's value, and prints them. After three seconds with no new records it stops. The output shows two lines, one for each order. The consumer only accesses the fields it knows about: ID and amount. It makes no assumption about the total number of fields in the value. This detail becomes important in the next segment.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/setup.sh`](starter/setup.sh)
- [`starter/v1_consumer.py`](starter/v1_consumer.py): the listing from the lesson
- [`starter/v1_producer.py`](starter/v1_producer.py)
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

There is nothing to check: `./check m05l04-04` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m05l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
