# m01l01-03 · Create a topic and produce three records

**Lesson:** [Why A Log And Not A Queue](https://learnsome.tech/learn/kafka-course/m01l01) (lesson 1.1, module 1: The Log: Topics, Partitions And Offsets) · Free  
**Check:** Read along

## Goal

You can explain why Kafka uses an append-only log rather than a delete-on-read queue, produce records to a topic, and consume them independently from two separate sessions.

In the lesson: We sleep for six seconds to give the broker time to complete its startup sequence. The first command creates a topic. Topics are the named channels where records live in Kafka; think of each one as a named log. We prefix the name with this lesson's identifier to prevent collisions with anything another author or verification run has left behind, and we specify one partition to keep offset numbering straightforward for this lesson. Then we pipe three short strings into rpk topic produce, one at a time. The command reads each line from standard input and turns it into one record. We pass the interactive flag to docker exec so the pipe reaches inside the container rather than being disconnected at the container boundary. Finally we consume all three records with a format string that prints the offset and the value. Offsets zero, one and two appear in order, and the values match exactly what we sent in.

## Files

- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`starter/setup.sh`](starter/setup.sh)
- [`starter/start.sh`](starter/start.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/session.sh` alongside the lesson.
2. On a machine that has what it needs, the lesson ran it with:

   ```sh
   bash setup.sh >/dev/null 2>&1
   B=m01l01-broker
   T=m01l01-events
   sleep 6
   docker exec $B rpk topic create $T -p 1
   echo login | docker exec -i $B rpk topic produce $T
   echo click | docker exec -i $B rpk topic produce $T
   echo order | docker exec -i $B rpk topic produce $T
   docker exec $B rpk topic consume $T -f '%o %v
   ' -o 0 --num 3
   ```

## How to check

**Read along.** It needs Docker (or another container engine), which the lab sandbox does not have. Run it on a machine with Docker installed.

There is nothing to check: `./check m01l01-03` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m01l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
