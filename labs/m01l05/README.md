# m01l05 · Retention: Time, Size And Why Data Stays

Module 1: The Log: Topics, Partitions And Offsets · lesson 1.5 · Free · [Open the lesson](https://learnsome.tech/learn/kafka-course/m01l05)

**Goal:** You can set time-based and size-based retention on a topic with rpk topic alter-config, verify the settings with rpk topic describe -c, and explain why retention deletes at segment boundaries rather than individual records.

## Labs

| Lab | What it is | Check |
| --- | --- | --- |
| [m01l05-02](m01l05-02/) | Start a network and broker | Checker |
| [m01l05-03](m01l05-03/) | Create a topic and produce some records | Checker |
| [m01l05-04](m01l05-04/) | Set time-based retention and inspect the config | Checker |
| [m01l05-05](m01l05-05/) | Set size-based retention and inspect the config | Checker |
| [m01l05-07](m01l05-07/) | Remove the broker and network | Checker |

## Exercises

Open exercises from the lesson, to try on your own. They have no answer files: work them out, and use the labs above as reference.

### Configure retention yourself

1. Set retention.ms to sixty thousand milliseconds; confirm with rpk topic describe -c.
2. Set retention.bytes to one hundred thousand; describe the topic and find the new setting.
3. Set both retention.ms and retention.bytes in one alter-config call using two -s flags.

> **Hint:** rpk topic alter-config accepts multiple -s flags: -s retention.ms=VALUE -s retention.bytes=VALUE.

## Check yourself

- What are the two types of retention settings available per topic in Kafka?
- Does rpk topic alter-config require a broker restart to take effect?
- At what granularity does Kafka delete data when a retention limit is exceeded?
- If both retention.ms and retention.bytes are set, which condition controls cleanup?
- Does consuming records from a topic affect when the retention policy removes them?

---

[Course README](../../README.md) · [Apache Kafka & Event Streaming on LearnSome.tech](https://learnsome.tech/courses/kafka-course)
