# m06l02 · The Transactional Outbox

Module 6: Event-Driven: Outbox, CDC, Compaction · lesson 6.2 · Pro · [Open the lesson](https://learnsome.tech/learn/kafka-course/m06l02)

**Goal:** You can implement a transactional outbox that writes a business row and an event record in a single database transaction, build a relay that publishes unpublished rows to Kafka and marks them published, and confirm that a second relay run produces no duplicates.

## Labs

| Lab | What it is | Check |
| --- | --- | --- |
| [m06l02-02](m06l02-02/) | Start broker, database and build the outbox client | Read along |
| [m06l02-03](m06l02-03/) | Write two orders and two outbox rows in one transaction | Read along |
| [m06l02-04](m06l02-04/) | Inspect the outbox before the relay runs | Read along |
| [m06l02-05](m06l02-05/) | Relay: read unpublished rows, produce them, mark published | Read along |
| [m06l02-06](m06l02-06/) | Confirm events in Kafka and published flags in the outbox | Read along |
| [m06l02-07](m06l02-07/) | Run the relay a second time: nothing is republished | Read along |
| [m06l02-09](m06l02-09/) | Remove the broker, database and network | Read along |

## Exercises

Open exercises from the lesson, to try on your own. They have no answer files: work them out, and use the labs above as reference.

### Extend the outbox relay

1. Add a third order to populate.py and relay it; confirm the topic has three events.
2. Run the relay twice in a row and confirm the second run always prints zero events relayed.
3. Change the relay to process one row at a time and count how many runs drain the outbox.

> **Hint:** Use the rpk consume command with the offset and num flags to fetch only the new events from the topic without re-reading earlier ones.

## Check yourself

- What two rows does the populate program write inside a single transaction?
- What does the relay do if it crashes between the Kafka flush and the database commit?
- How does the published flag prevent duplicate events when the relay runs twice?
- What does the consume output show immediately after the first relay run?
- Why does the outbox pattern give at-least-once rather than exactly-once delivery?

---

[Course README](../../README.md) · [Apache Kafka & Event Streaming on LearnSome.tech](https://learnsome.tech/courses/kafka-course)
