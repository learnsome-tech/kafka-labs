<img src="https://learnsome.tech/logo.png" width="48" alt="LearnSome.tech">

# Apache Kafka & Event Streaming

Kafka as a working engineer meets it: a replicated log, not a queue. 7 modules, 35 lessons, five to nine minutes each, every one run against a real Kafka-compatible broker (Redpanda) in Docker: topics, partitions and offsets; producers with keys, batching and acknowledgements; consumer groups, commits and rebalancing; the delivery guarantees you can actually get, including idempotent producers, transactions and dead letter topics; schemas and their evolution; the outbox pattern, change data capture and log compaction; and operating a three-broker cluster through a broker failure.

## Watch and read

- **Course page**: [https://learnsome.tech/courses/kafka-course](https://learnsome.tech/courses/kafka-course)
- **Video player**: [https://learnsome.tech/courses/kafka-course/watch](https://learnsome.tech/courses/kafka-course/watch)
- **Handbook PDF**: [https://learnsome.tech/handbooks/kafka/book.pdf](https://learnsome.tech/handbooks/kafka/book.pdf)
- **On-site handbook**: [https://learnsome.tech/courses/kafka-course/book](https://learnsome.tech/courses/kafka-course/book)

## What is in this repository

This repository contains code artifacts, exercises and reference files for the lessons in this course.
35 lessons include a `labs/<lessonId>/` folder.
Each folder is named after the lesson identifier (e.g. `labs/m01l01/`) and contains the
artifact files shown in the course video, an `EXERCISES.md` with hands-on tasks, and
sub-directories named by artifact reference (e.g. `m01l01-02/`).

## Lessons

| # | Lesson | Watch | Labs | Handbook |
|---|--------|-------|------|----------|
| | **The Log: Topics, Partitions And Offsets** | | | |
| 1 | Why A Log And Not A Queue | [▶](https://learnsome.tech/courses/kafka-course/watch?lesson=m01l01) | [labs/m01l01/](labs/m01l01/) | [§](https://learnsome.tech/courses/kafka-course/book#lesson-1-1) |
| 2 | Starting A Broker And Reading Its Metadata | [▶](https://learnsome.tech/courses/kafka-course/watch?lesson=m01l02) | [labs/m01l02/](labs/m01l02/) | [§](https://learnsome.tech/courses/kafka-course/book#lesson-1-2) |
| 3 | Topics, Partitions And Where A Record Lands | [▶](https://learnsome.tech/courses/kafka-course/watch?lesson=m01l03) | [labs/m01l03/](labs/m01l03/) | [§](https://learnsome.tech/courses/kafka-course/book#lesson-1-3) |
| 4 | Offsets: Position, Not Acknowledgement | [▶](https://learnsome.tech/courses/kafka-course/watch?lesson=m01l04) | [labs/m01l04/](labs/m01l04/) | [§](https://learnsome.tech/courses/kafka-course/book#lesson-1-4) |
| 5 | Retention: Time, Size And Why Data Stays | [▶](https://learnsome.tech/courses/kafka-course/watch?lesson=m01l05) | [labs/m01l05/](labs/m01l05/) | [§](https://learnsome.tech/courses/kafka-course/book#lesson-1-5) |
| | **Producers: Keys, Batches And Acks** | | | |
| 6 | A Producer In Python | [▶](https://learnsome.tech/courses/kafka-course/watch?lesson=m02l01) | [labs/m02l01/](labs/m02l01/) | [§](https://learnsome.tech/courses/kafka-course/book#lesson-2-1) |
| 7 | Keys And Ordering Per Partition | [▶](https://learnsome.tech/courses/kafka-course/watch?lesson=m02l02) | [labs/m02l02/](labs/m02l02/) | [§](https://learnsome.tech/courses/kafka-course/book#lesson-2-2) |
| 8 | Acknowledgements: What Acks Means For Durability | [▶](https://learnsome.tech/courses/kafka-course/watch?lesson=m02l03) | [labs/m02l03/](labs/m02l03/) | [§](https://learnsome.tech/courses/kafka-course/book#lesson-2-3) |
| 9 | Batching, Linger And Throughput | [▶](https://learnsome.tech/courses/kafka-course/watch?lesson=m02l04) | [labs/m02l04/](labs/m02l04/) | [§](https://learnsome.tech/courses/kafka-course/book#lesson-2-4) |
| 10 | Idempotent Producers And Retries | [▶](https://learnsome.tech/courses/kafka-course/watch?lesson=m02l05) | [labs/m02l05/](labs/m02l05/) | [§](https://learnsome.tech/courses/kafka-course/book#lesson-2-5) |
| | **Consumers And Consumer Groups** | | | |
| 11 | A Consumer In Python | [▶](https://learnsome.tech/courses/kafka-course/watch?lesson=m03l01) | [labs/m03l01/](labs/m03l01/) | [§](https://learnsome.tech/courses/kafka-course/book#lesson-3-1) |
| 12 | Consumer Groups And Partition Assignment | [▶](https://learnsome.tech/courses/kafka-course/watch?lesson=m03l02) | [labs/m03l02/](labs/m03l02/) | [§](https://learnsome.tech/courses/kafka-course/book#lesson-3-2) |
| 13 | Committing Offsets: Auto, Manual And Lag | [▶](https://learnsome.tech/courses/kafka-course/watch?lesson=m03l03) | [labs/m03l03/](labs/m03l03/) | [§](https://learnsome.tech/courses/kafka-course/book#lesson-3-3) |
| 14 | Rebalancing And Its Cost | [▶](https://learnsome.tech/courses/kafka-course/watch?lesson=m03l04) | [labs/m03l04/](labs/m03l04/) | [§](https://learnsome.tech/courses/kafka-course/book#lesson-3-4) |
| 15 | At Most Once, At Least Once | [▶](https://learnsome.tech/courses/kafka-course/watch?lesson=m03l05) | [labs/m03l05/](labs/m03l05/) | [§](https://learnsome.tech/courses/kafka-course/book#lesson-3-5) |
| | **Delivery Guarantees And Transactions** | | | |
| 16 | Duplicates Are The Default | [▶](https://learnsome.tech/courses/kafka-course/watch?lesson=m04l01) | [labs/m04l01/](labs/m04l01/) | [§](https://learnsome.tech/courses/kafka-course/book#lesson-4-1) |
| 17 | Idempotent Consumers And Deduplication Keys | [▶](https://learnsome.tech/courses/kafka-course/watch?lesson=m04l02) | [labs/m04l02/](labs/m04l02/) | [§](https://learnsome.tech/courses/kafka-course/book#lesson-4-2) |
| 18 | Transactions And Exactly Once Semantics | [▶](https://learnsome.tech/courses/kafka-course/watch?lesson=m04l03) | [labs/m04l03/](labs/m04l03/) | [§](https://learnsome.tech/courses/kafka-course/book#lesson-4-3) |
| 19 | Poison Messages And Dead Letter Topics | [▶](https://learnsome.tech/courses/kafka-course/watch?lesson=m04l04) | [labs/m04l04/](labs/m04l04/) | [§](https://learnsome.tech/courses/kafka-course/book#lesson-4-4) |
| 20 | Retries With Backoff Topics | [▶](https://learnsome.tech/courses/kafka-course/watch?lesson=m04l05) | [labs/m04l05/](labs/m04l05/) | [§](https://learnsome.tech/courses/kafka-course/book#lesson-4-5) |
| | **Schemas, Serialisation And Evolution** | | | |
| 21 | Bytes On The Wire: JSON, Avro And Protobuf | [▶](https://learnsome.tech/courses/kafka-course/watch?lesson=m05l01) | [labs/m05l01/](labs/m05l01/) | [§](https://learnsome.tech/courses/kafka-course/book#lesson-5-1) |
| 22 | The Schema Registry | [▶](https://learnsome.tech/courses/kafka-course/watch?lesson=m05l02) | [labs/m05l02/](labs/m05l02/) | [§](https://learnsome.tech/courses/kafka-course/book#lesson-5-2) |
| 23 | Compatibility Modes | [▶](https://learnsome.tech/courses/kafka-course/watch?lesson=m05l03) | [labs/m05l03/](labs/m05l03/) | [§](https://learnsome.tech/courses/kafka-course/book#lesson-5-3) |
| 24 | Evolving An Event Without Breaking Consumers | [▶](https://learnsome.tech/courses/kafka-course/watch?lesson=m05l04) | [labs/m05l04/](labs/m05l04/) | [§](https://learnsome.tech/courses/kafka-course/book#lesson-5-4) |
| 25 | Headers, Envelopes And Event Metadata | [▶](https://learnsome.tech/courses/kafka-course/watch?lesson=m05l05) | [labs/m05l05/](labs/m05l05/) | [§](https://learnsome.tech/courses/kafka-course/book#lesson-5-5) |
| | **Event-Driven: Outbox, CDC, Compaction** | | | |
| 26 | Dual Writes And Why They Lose Data | [▶](https://learnsome.tech/courses/kafka-course/watch?lesson=m06l01) | [labs/m06l01/](labs/m06l01/) | [§](https://learnsome.tech/courses/kafka-course/book#lesson-6-1) |
| 27 | The Transactional Outbox | [▶](https://learnsome.tech/courses/kafka-course/watch?lesson=m06l02) | [labs/m06l02/](labs/m06l02/) | [§](https://learnsome.tech/courses/kafka-course/book#lesson-6-2) |
| 28 | Change Data Capture In Principle | [▶](https://learnsome.tech/courses/kafka-course/watch?lesson=m06l03) | [labs/m06l03/](labs/m06l03/) | [§](https://learnsome.tech/courses/kafka-course/book#lesson-6-3) |
| 29 | Log Compaction: A Topic As A Table | [▶](https://learnsome.tech/courses/kafka-course/watch?lesson=m06l04) | [labs/m06l04/](labs/m06l04/) | [§](https://learnsome.tech/courses/kafka-course/book#lesson-6-4) |
| 30 | Materialised Views From A Stream | [▶](https://learnsome.tech/courses/kafka-course/watch?lesson=m06l05) | [labs/m06l05/](labs/m06l05/) | [§](https://learnsome.tech/courses/kafka-course/book#lesson-6-5) |
| | **Operating A Cluster** | | | |
| 31 | Three Brokers: Replication And Leaders | [▶](https://learnsome.tech/courses/kafka-course/watch?lesson=m07l01) | [labs/m07l01/](labs/m07l01/) | [§](https://learnsome.tech/courses/kafka-course/book#lesson-7-1) |
| 32 | In-Sync Replicas And Minimum ISR | [▶](https://learnsome.tech/courses/kafka-course/watch?lesson=m07l02) | [labs/m07l02/](labs/m07l02/) | [§](https://learnsome.tech/courses/kafka-course/book#lesson-7-2) |
| 33 | Losing A Broker | [▶](https://learnsome.tech/courses/kafka-course/watch?lesson=m07l03) | [labs/m07l03/](labs/m07l03/) | [§](https://learnsome.tech/courses/kafka-course/book#lesson-7-3) |
| 34 | Watching Lag And Sizing Partitions | [▶](https://learnsome.tech/courses/kafka-course/watch?lesson=m07l04) | [labs/m07l04/](labs/m07l04/) | [§](https://learnsome.tech/courses/kafka-course/book#lesson-7-4) |
| 35 | When Kafka Is The Wrong Tool | [▶](https://learnsome.tech/courses/kafka-course/watch?lesson=m07l05) | [labs/m07l05/](labs/m07l05/) | [§](https://learnsome.tech/courses/kafka-course/book#lesson-7-5) |

## Exercises

Each lesson folder contains an `EXERCISES.md` with hands-on tasks drawn directly from the course material.
Open the file for a lesson to see the tasks and, where provided, hints.

---

© LearnSome.tech · support@iwantto.learnsome.tech
