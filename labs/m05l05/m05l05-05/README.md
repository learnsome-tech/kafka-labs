# m05l05-05 · Consume with rpk to see the raw wire value

**Lesson:** [Headers, Envelopes And Event Metadata](https://learnsome.tech/learn/kafka-course/m05l05) (lesson 5.5, module 5: Schemas, Serialisation And Evolution) · Pro  
**Check:** Checker

## Goal

You can attach record headers to a Kafka message in kafka-python, design an envelope structure with event ID, type, version, occurred-at, and payload, and consume both headers and envelope fields in a deterministic printed output.

In the lesson: The rpk consume command prints the key and value with no schema decoding. The value is the raw JSON string the producer serialized, including all envelope fields. The headers are not visible in this output because the format string only addresses the key and value. This output shows what the broker actually stored: the envelope is just bytes in the value, and the metadata fields are part of the JSON payload. The kafka-python consumer earlier in the lesson accessed headers through the metadata layer that the Kafka protocol provides separately from the value bytes.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/envelope_consumer.py`](starter/envelope_consumer.py)
- [`starter/envelope_producer.py`](starter/envelope_producer.py)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`starter/setup.sh`](starter/setup.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m05l05/m05l05-05/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   B=m05l05-broker
   T=m05l05-events
   docker exec $B rpk topic consume $T -f '%k %v\n' -o 0 --num 1
   ```
4. Edit `session.sh` and check it: `bash -n session.sh`.
5. Check it from the repository root: `./check m05l05-05`.

## How to check

`./check m05l05-05` copies `starter/` into a scratch directory and runs `bash -n session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the shell script parses (`bash -n`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m05l05) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
