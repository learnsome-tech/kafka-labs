# m01l02-03 · Read cluster info and check health

**Lesson:** [Starting A Broker And Reading Its Metadata](https://learnsome.tech/learn/kafka-course/m01l02) (lesson 1.2, module 1: The Log: Topics, Partitions And Offsets) · Free  
**Check:** Checker

## Goal

You can start a Redpanda broker with the correct networking flags, read its cluster state with rpk cluster info and rpk cluster health, and explain why the advertised address must be the container name.

In the lesson: We wait for the broker to finish starting up, then run rpk cluster info. The cluster section shows the cluster name, which includes a UUID that changes every time the broker starts fresh; we elide that line rather than pinning a value that will not match on the next run. The brokers section is what matters: broker ID zero is the current controller, marked with an asterisk, and it is reachable at the address we advertised on the standard Kafka protocol port. Next we run rpk cluster health, which asks the broker to assess its own operational state. It reports whether the cluster is healthy, the controller ID, which nodes are listed, which are down, and whether any partitions are missing a leader or falling behind on replication. A single healthy broker shows no problems in any of those fields.

## Files

- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`starter/setup.sh`](starter/setup.sh)
- [`starter/start.sh`](starter/start.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m01l02/m01l02-03/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   B=m01l02-broker
   sleep 6
   docker exec $B rpk cluster info
   docker exec $B rpk cluster health
   ```
4. Edit `session.sh` and check it: `bash -n session.sh`.
5. Check it from the repository root: `./check m01l02-03`.

## How to check

`./check m01l02-03` copies `starter/` into a scratch directory and runs `bash -n session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the shell script parses (`bash -n`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m01l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
