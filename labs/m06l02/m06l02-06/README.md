# m06l02-06 · Confirm events in Kafka and published flags in the outbox

**Lesson:** [The Transactional Outbox](https://learnsome.tech/learn/kafka-course/m06l02) (lesson 6.2, module 6: Event-Driven: Outbox, CDC, Compaction) · Pro  
**Check:** Checker

## Goal

You can implement a transactional outbox that writes a business row and an event record in a single database transaction, build a relay that publishes unpublished rows to Kafka and marks them published, and confirm that a second relay run produces no duplicates.

In the lesson: The consume command reads both events from the beginning and prints the key and value for each. The command reads both events from offset zero and the output shows their JSON payloads. The outbox table now shows the published flag as true for both rows. The relay moved the events from the database buffer into Kafka and updated the record of what it delivered.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/populate.py`](starter/populate.py)
- [`starter/relay.py`](starter/relay.py)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`starter/setup.sh`](starter/setup.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m06l02/m06l02-06/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   B=m06l02-broker T=m06l02-events
   docker exec $B rpk topic consume $T -f '%k %v\n' -o 0 --num 2
   PG="docker exec m06l02-db psql -U postgres"
   $PG -c "SELECT id,event_key,published FROM outbox ORDER BY id"
   ```
4. Edit `session.sh` and check it: `bash -n session.sh`.
5. Check it from the repository root: `./check m06l02-06`.

## How to check

`./check m06l02-06` copies `starter/` into a scratch directory and runs `bash -n session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the shell script parses (`bash -n`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m06l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
