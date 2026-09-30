# m01l02 · Starting A Broker And Reading Its Metadata

Module 1: The Log: Topics, Partitions And Offsets · lesson 1.2 · Free · [Open the lesson](https://learnsome.tech/learn/kafka-course/m01l02)

**Goal:** You can start a Redpanda broker with the correct networking flags, read its cluster state with rpk cluster info and rpk cluster health, and explain why the advertised address must be the container name.

## Labs

| Lab | What it is | Check |
| --- | --- | --- |
| [m01l02-02](m01l02-02/) | Start a network and broker | Checker |
| [m01l02-03](m01l02-03/) | Read cluster info and check health | Checker |
| [m01l02-05](m01l02-05/) | List topics on the broker | Checker |
| [m01l02-06](m01l02-06/) | Remove the broker and network | Checker |

## Exercises

Open exercises from the lesson, to try on your own. They have no answer files: work them out, and use the labs above as reference.

### Try the metadata commands

1. Start a broker and run rpk cluster info; identify the broker id and the advertised address.
2. Run rpk cluster health twice in a row; note which fields are always the same.
3. Create a topic with rpk topic create, then run rpk topic list to confirm it appears.

> **Hint:** After creating a topic manually, use rpk topic describe to see its partition and replica count.

## Check yourself

- What does the brokers section of rpk cluster info show you?
- Why does setting the advertised kafka address to the container name allow other containers to connect?
- What does rpk cluster health report when a single-node cluster is running normally?
- What does rpk topic list show on a broker with no user topics created yet?
- Why must the cluster UUID line in rpk cluster info be elided rather than pinned in a transcript?

---

[Course README](../../README.md) · [Apache Kafka & Event Streaming on LearnSome.tech](https://learnsome.tech/courses/kafka-course)
