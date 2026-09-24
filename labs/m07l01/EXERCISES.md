# Exercises — Three Brokers: Replication And Leaders

Lesson `m07l01` · [Watch](https://learnsome.tech/courses/kafka-course/watch?lesson=m07l01)

## Exercise 1: Practice: build and inspect a replicated cluster

1. Start a three-broker cluster on a new network, naming the brokers m07l01-practice-b1 through b3.
2. Create a topic with two partitions and replication factor three, then describe its partitions.
3. Note which brokers end up with no partition to lead, then remove all containers and the network.

> **Hint**: The script pattern uses a for loop over one two three with a one-second sleep between each docker run call. After the loop, sleep seven seconds before running rpk commands.


---

© LearnSome.tech · support@iwantto.learnsome.tech
