# m06l03-03 · Insert a product row and then update it

**Lesson:** [Change Data Capture In Principle](https://learnsome.tech/learn/kafka-course/m06l03) (lesson 6.3, module 6: Event-Driven: Outbox, CDC, Compaction) · Pro  
**Check:** Checker

## Goal

You can start a Postgres instance with logical replication enabled, create a replication slot using the test decoding plugin, and read the change stream produced by insert and update statements to explain how a connector such as Debezium turns those changes into Kafka events.

In the lesson: We insert one product and then update it. Both statements are plain data manipulation: there is nothing special about them from the application side. The database records both changes in the write-ahead log automatically because the slot is active and the log level is logical. One row is inserted and one row is updated, giving us two events to read from the change stream.

## Files

- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`starter/setup.sh`](starter/setup.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m06l03/m06l03-03/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   E="docker exec m06l03-db psql -U postgres -c"
   $E "INSERT INTO products (item) VALUES ('widget')"
   $E "UPDATE products SET item = 'gadget' WHERE id = 1"
   ```
4. Edit `session.sh` and check it: `bash -n session.sh`.
5. Check it from the repository root: `./check m06l03-03`.

## How to check

`./check m06l03-03` copies `starter/` into a scratch directory and runs `bash -n session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the shell script parses (`bash -n`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m06l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
