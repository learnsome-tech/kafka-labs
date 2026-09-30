# m03l04 · Rebalancing And Its Cost

Module 3: Consumers And Consumer Groups · lesson 3.4 · Pro · [Open the lesson](https://learnsome.tech/learn/kafka-course/m03l04)

**Goal:** You can explain what triggers a rebalance, configure session and heartbeat timeouts, and describe what happens to a consumer that exceeds max-poll-interval-milliseconds.

## Labs

| Lab | What it is | Check |
| --- | --- | --- |
| [m03l04-02](m03l04-02/) | Start the broker and network | Checker |
| [m03l04-03](m03l04-03/) | Create a three-partition topic and produce three records | Checker |
| [m03l04-04](m03l04-04/) | Write the consumer with session and heartbeat settings | Checker |
| [m03l04-05](m03l04-05/) | Run the consumer and observe the rebalance | Checker |
| [m03l04-07](m03l04-07/) | Inspect the group and clean up | Checker |

## Exercises

Open exercises from the lesson, to try on your own. They have no answer files: work them out, and use the labs above as reference.

### Try it yourself

1. Set session-timeout to six seconds and heartbeat-interval to two seconds, then run the consumer.
2. Add a sleep inside the for loop longer than max-poll-interval and observe the error raised.
3. Explain what the broker does between a missed heartbeat and the session timeout expiring.

> **Hint:** The broker starts counting toward the session timeout from the last successful heartbeat, not from when poll was last called. The heartbeat thread keeps that clock reset as long as the application is alive and the thread is running.

## Check yourself

- What three events trigger a rebalance in a consumer group?
- What is the difference between eager and cooperative rebalancing in terms of which partitions are revoked?
- Why is heartbeat-interval-milliseconds recommended to be one third or less of session-timeout-milliseconds?
- Why can a slow database write inside the poll loop cause a rebalance even when the heartbeat thread is still running?
- What does the on-assign callback let you observe that you cannot see from the records alone?

---

[Course README](../../README.md) · [Apache Kafka & Event Streaming on LearnSome.tech](https://learnsome.tech/courses/kafka-course)
