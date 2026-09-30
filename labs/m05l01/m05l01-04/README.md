# m05l01-04 · Consume the JSON topic to see what the wire carries

**Lesson:** [Bytes On The Wire: JSON, Avro And Protobuf](https://learnsome.tech/learn/kafka-course/m05l01) (lesson 5.1, module 5: Schemas, Serialisation And Evolution) · Pro  
**Check:** Read along

## Goal

You can produce the same event as a JSON record and as a compact binary struct, explain why JSON is schema-less while Avro and Protobuf are schema-full, and interpret the byte-count difference between the two approaches.

In the lesson: Consuming the JSON topic with a format string that prints just the key and value reveals the record exactly as the producer serialized it: the field names, the colons, the values, and the surrounding braces are all present in plain text. Any reader that understands JSON can decode this without any additional context beyond what the record itself provides. That is the defining property of a schema-less format. Consuming the binary topic, by contrast, would display the seven raw bytes as a mix of control characters and printable symbols with no discernible structure. You could recover the original values only if you already knew the struct format string the producer used, which must be shared out of band.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/serialize.py`](starter/serialize.py)
- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`starter/setup.sh`](starter/setup.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/session.sh` alongside the lesson.
2. On a machine that has what it needs, the lesson ran it with:

   ```sh
   bash setup.sh >/dev/null 2>&1
   B=m05l01-broker
   T=m05l01-json
   docker exec $B rpk topic consume $T -f '%k %v
   ' -o 0 --num 1
   ```

## How to check

**Read along.** It needs Docker (or another container engine), which the lab sandbox does not have. Run it on a machine with Docker installed.

There is nothing to check: `./check m05l01-04` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m05l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
