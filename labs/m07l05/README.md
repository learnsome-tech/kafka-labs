# m07l05 · When Kafka Is The Wrong Tool

Module 7: Operating A Cluster · lesson 7.5 · Pro · [Open the lesson](https://learnsome.tech/learn/kafka-course/m07l05)

**Goal:** You can list three scenarios where a message queue, a database table, or direct RPC is a better fit than Kafka, and explain the operational cost of running a broker cluster.

## Labs

| Lab | What it is | Check |
| --- | --- | --- |
| [m07l05-02](m07l05-02/) | Show the cost of running three broker containers | Checker |
| [m07l05-03](m07l05-03/) | Print a decision table from a rule dictionary | Checker |
| [m07l05-05](m07l05-05/) | Remove the cluster | Checker |

## Exercises

Open exercises from the lesson, to try on your own. They have no answer files: work them out, and use the labs above as reference.

### Practice: apply the decision table

1. Name a use case from your own work or a project you know where Kafka would be the wrong choice.
2. Identify which alternative fits better and explain what property makes it a better match.
3. Name one scenario where Kafka clearly fits and explain why a simpler tool would not serve.

> **Hint:** Focus on the shape of interaction: request-reply, fire-and-forget, fan-out, ordered stream, or audit log. The shape usually determines the tool before you consider throughput or scale.

## Check yourself

- What are three resources a three-broker Kafka cluster consumes that a direct HTTP call does not?
- Why is request-reply a poor fit for Kafka even though it can be implemented with two topics?
- What property of a task queue makes it better than Kafka for jobs that must run exactly once?
- Name two interaction patterns where Kafka is clearly the right choice.

---

[Course README](../../README.md) · [Apache Kafka & Event Streaming on LearnSome.tech](https://learnsome.tech/courses/kafka-course)
