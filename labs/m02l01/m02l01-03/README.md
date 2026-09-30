# m02l01-03 · Write the producer and build the image

**Lesson:** [A Producer In Python](https://learnsome.tech/learn/kafka-course/m02l01) (lesson 2.1, module 2: Producers: Keys, Batches And Acks) · Pro  
**Check:** Checker

## Goal

You can write a KafkaProducer that sends records to a topic, block on the returned future, and read the partition and offset from the metadata the broker returns.

In the lesson: The producer program starts by silencing the kafka-python library's own log output; without that line the library's connection messages appear mixed in with the records we want to read. Then it constructs a KafkaProducer pointing at the broker by name and port. The bootstrap-servers argument is the single address the client uses for its first connection; Kafka fetches the full partition and broker map from that one endpoint automatically. The loop sends ten records whose values are the word record followed by the loop index as a digit. Each call to send returns a future, and the call to get immediately after blocks until the broker responds with a confirmation. The broker's response carries a RecordMetadata object; the fields we print are partition and offset. The final line flushes pending sends and closes the connection. Building the image in quiet mode emits only the content-addressable digest of the resulting layer stack.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/producer.py`](starter/producer.py): the listing from the lesson
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/setup.sh`](starter/setup.sh)
- [`starter/start.sh`](starter/start.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m02l01/m02l01-03/starter`
2. Read `producer.py`.
3. Edit `producer.py` and check it: `python3 -m py_compile producer.py`.
4. Check it from the repository root: `./check m02l01-03`.

## How to check

`./check m02l01-03` copies `starter/` into a scratch directory and runs `python3 -m py_compile producer.py` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the Python program compiles (`python3 -m py_compile`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m02l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
