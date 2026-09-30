# m05l02 · The Schema Registry

Module 5: Schemas, Serialisation And Evolution · lesson 5.2 · Pro · [Open the lesson](https://learnsome.tech/learn/kafka-course/m05l02)

**Goal:** You can register a JSON schema with a schema registry, list subjects, retrieve a schema by version, and explain the TopicNameStrategy naming convention and the Confluent wire format magic byte.

## Labs

| Lab | What it is | Check |
| --- | --- | --- |
| [m05l02-02](m05l02-02/) | Start the broker and create the orders topic | Read along |
| [m05l02-03](m05l02-03/) | The JSON Schema format and what it describes | Read along |
| [m05l02-04](m05l02-04/) | Register the schema with the registry | Read along |
| [m05l02-05](m05l02-05/) | List subjects and retrieve the registered schema | Read along |
| [m05l02-06](m05l02-06/) | Schema identifiers and the Confluent wire format | Read along |
| [m05l02-08](m05l02-08/) | Remove the broker and network | Read along |

## Exercises

Open exercises from the lesson, to try on your own. They have no answer files: work them out, and use the labs above as reference.

### Register a second schema under a different subject

1. Create a schema for a shipment event with a tracking number string and a status string field.
2. Register it under m05l02-shipments-value and verify it appears in the subject list.
3. Retrieve both schemas by version and compare their identifiers.

> **Hint:** Use the same heredoc registration pattern. The subject name must match the topic name with a dash-value suffix for TopicNameStrategy compatibility.

## Check yourself

- What does the rpk registry schema create command return after a successful registration?
- Which naming convention produces a subject name from a Kafka topic name?
- What is the purpose of the magic byte zero in the Confluent wire format prefix?
- Why does schema registry state need separate persistence from Kafka topic data?

---

[Course README](../../README.md) · [Apache Kafka & Event Streaming on LearnSome.tech](https://learnsome.tech/courses/kafka-course)
