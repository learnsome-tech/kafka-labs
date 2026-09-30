# m05l03 · Compatibility Modes

Module 5: Schemas, Serialisation And Evolution · lesson 5.3 · Pro · [Open the lesson](https://learnsome.tech/learn/kafka-course/m05l03)

**Goal:** You can set a compatibility level on a schema registry subject, demonstrate that an incompatible schema change is rejected, register a backward-compatible addition, and explain the practical difference between BACKWARD, FORWARD, and FULL modes.

## Labs

| Lab | What it is | Check |
| --- | --- | --- |
| [m05l03-02](m05l03-02/) | Start the broker and create the events topic | Checker |
| [m05l03-03](m05l03-03/) | Register v-one schema and set BACKWARD compatibility | Checker |
| [m05l03-04](m05l03-04/) | Attempt to register an incompatible schema change | Read along |
| [m05l03-05](m05l03-05/) | Register a compatible schema: add an optional field | Checker |
| [m05l03-08](m05l03-08/) | Remove the broker and network | Checker |

## Exercises

Open exercises from the lesson, to try on your own. They have no answer files: work them out, and use the labs above as reference.

### Test other compatibility levels

1. Set the compatibility level to FORWARD and register a schema that removes the optional s field.
2. Set the level to NONE and register a schema that renames id to order-id; confirm it is accepted.
3. Reset the level to BACKWARD and try to register the renamed schema again; confirm it is rejected

> **Hint:** A field removal is FORWARD-compatible because old consumers reading new records see a missing optional field, which they can ignore. It is not BACKWARD-compatible because new consumers reading old records expect the field to be present.

## Check yourself

- With BACKWARD compatibility, which side should you upgrade first: producers or consumers?
- Why does changing a field type from integer to string break both BACKWARD and FORWARD compatibility?
- What error did the registry return when you tried to change the root type from object to string?
- Why is adding an optional field considered BACKWARD-compatible?
- What does NONE compatibility level allow that BACKWARD and FORWARD do not?

---

[Course README](../../README.md) · [Apache Kafka & Event Streaming on LearnSome.tech](https://learnsome.tech/courses/kafka-course)
