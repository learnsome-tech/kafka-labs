# m05l04 · Evolving An Event Without Breaking Consumers

Module 5: Schemas, Serialisation And Evolution · lesson 5.4 · Pro · [Open the lesson](https://learnsome.tech/learn/kafka-course/m05l04)

**Goal:** You can produce a v-one event and a v-two event with an extra optional field to the same topic, show that the v-one consumer code processes both without error, and explain why renaming a field is a breaking change while adding one is not.

## Labs

| Lab | What it is | Check |
| --- | --- | --- |
| [m05l04-02](m05l04-02/) | Start the broker, build the client, create the topic | Read along |
| [m05l04-03](m05l04-03/) | V-one producer: two records with id and amount | Read along |
| [m05l04-04](m05l04-04/) | V-one consumer: reads the two v-one records | Read along |
| [m05l04-05](m05l04-05/) | V-two producer: adds a currency field to every record | Read along |
| [m05l04-06](m05l04-06/) | V-one consumer re-runs: processes v-two records too | Read along |
| [m05l04-09](m05l04-09/) | Remove the broker and network | Read along |

## Exercises

Open exercises from the lesson, to try on your own. They have no answer files: work them out, and use the labs above as reference.

### Test safe and breaking schema changes

1. Send a record with a new optional field named region and verify the v-one consumer still works.
2. Send a record where id is renamed to order-id and confirm the v-one consumer raises a key error.
3. Fix the consumer to handle both id and order-id with a dictionary get call and a default value.

> **Hint:** Use value.get to read a field with a fallback: v.get('order-id') or v.get('id') handles both old and new field names in one expression.

## Check yourself

- Why did the v-one consumer process the v-two records without error despite the extra currency field?
- Why is renaming a field equivalent to a removal plus an addition at the same time?
- What is the expand-and-contract pattern and which schema change problem does it solve?
- Which consumer code change would let a single consumer handle both the old ID and the renamed order-ID field?

---

[Course README](../../README.md) · [Apache Kafka & Event Streaming on LearnSome.tech](https://learnsome.tech/courses/kafka-course)
