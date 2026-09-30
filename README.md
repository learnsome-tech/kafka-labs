<p>
  <a href="https://learnsome.tech/courses/kafka-course">
    <picture>
      <source media="(prefers-color-scheme: dark)" srcset=".github/assets/wordmark-inverse.svg">
      <img src=".github/assets/wordmark.svg" alt="LearnSome.tech" width="260">
    </picture>
  </a>
</p>

# Apache Kafka & Event Streaming

**Producers, Consumers, Guarantees, Schemas & the Outbox Pattern**

Kafka as a working engineer meets it: a replicated log, not a queue. 7 modules, 35 lessons, five to nine minutes each, every one run against a real Kafka-compatible broker (Redpanda) in Docker: topics, partitions and offsets; producers with keys, batching and acknowledgements; consumer groups, commits and rebalancing; the delivery guarantees you can actually get, including idempotent producers, transactions and dead letter topics; schemas and their evolution; the outbox pattern, change data capture and log compaction; and operating a three-broker cluster through a broker failure. Intermediate level, about 3 hours.

This repository holds the labs of the LearnSome.tech course [Apache Kafka & Event Streaming](https://learnsome.tech/courses/kafka-course): each lab's starter files, a README with the goal, the steps and the expected output, and `./check`, which tests your work the way the site does.

## Start

[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/learnsome-tech/kafka-labs?quickstart=1)

- **Codespaces:** the badge opens this repository in a dev container with Python 3.14.7, as in the site's lab sandbox.
- **On your machine:**

  ```sh
  git clone https://github.com/learnsome-tech/kafka-labs.git
  cd kafka-labs
  ./check m01l01-02
  ```

  You need Python 3 for `./check`, and for the labs themselves Python 3.14.7. Other versions mostly work, but only the sandbox's versions are sure to print what the site prints. VS Code's Dev Containers extension builds the same container as Codespaces (x86-64).

## Doing a lab

1. Open the lesson on LearnSome.tech and the lab folder beside it: `labs/<lesson>/<lab>/`. The lab README has the goal, the steps and the expected output.
2. Work in the lab's `starter/` folder.
3. From the repository root, run `./check <lab>` (for example `./check m01l01-02`), or `./check <lesson>` for all labs of a lesson, or `./check --all`. `./check --list` shows every lab and how it is checked.

`./check` runs your starter the way the site's lab sandbox does: in a scratch copy that is its working directory and `HOME`, with `LANG=C.UTF-8`, `TZ=UTC`, `input.txt` on standard input, 10 seconds and 256 KiB of output per stream. It then compares the output with the site's own rules, so a pass here is a pass on the site.

| Check | What `./check` does | Labs |
| --- | --- | --- |
| Checker | Validates the file with the checker the site uses (hadolint, kubeconform, actionlint, yamllint, `ansible-playbook --syntax-check` or `terraform validate`); passes when it finds no errors. | 167 |
| Read along | Nothing to run here: the site shows the listing read-only, and the lab README says honestly what it needs (Docker, a cluster, a cloud account...). | 7 |

## What is published, and what is not

Every lab's starter is the code the lesson shows on screen, which is also what the lab editor on the site opens with. Where that code is the whole program, such as a recorded shell session or a script from the video, it is published as it is: it is the lesson content. Nothing beyond the lesson is published. There are no reference solutions and no answers to the lesson exercises, and nothing the site keeps private.

Pro lessons' labs are here as starters too. LearnSome.tech runs and grades your labs in its sandbox, hosts the videos and keeps your progress; running and grading a Pro lab on the site needs Pro.

## Modules and lessons

### Module 1: The Log: Topics, Partitions And Offsets

| # | Lesson | Labs | Access |
| --- | --- | --- | --- |
| 1.1 | [Why A Log And Not A Queue](https://learnsome.tech/learn/kafka-course/m01l01) | [4 labs](labs/m01l01/) | Free |
| 1.2 | [Starting A Broker And Reading Its Metadata](https://learnsome.tech/learn/kafka-course/m01l02) | [4 labs](labs/m01l02/) | Free |
| 1.3 | [Topics, Partitions And Where A Record Lands](https://learnsome.tech/learn/kafka-course/m01l03) | [5 labs](labs/m01l03/) | Free |
| 1.4 | [Offsets: Position, Not Acknowledgement](https://learnsome.tech/learn/kafka-course/m01l04) | [6 labs](labs/m01l04/) | Free |
| 1.5 | [Retention: Time, Size And Why Data Stays](https://learnsome.tech/learn/kafka-course/m01l05) | [5 labs](labs/m01l05/) | Free |

### Module 2: Producers: Keys, Batches And Acks

| # | Lesson | Labs | Access |
| --- | --- | --- | --- |
| 2.1 | [A Producer In Python](https://learnsome.tech/learn/kafka-course/m02l01) | [4 labs](labs/m02l01/) | Pro |
| 2.2 | [Keys And Ordering Per Partition](https://learnsome.tech/learn/kafka-course/m02l02) | [5 labs](labs/m02l02/) | Pro |
| 2.3 | [Acknowledgements: What Acks Means For Durability](https://learnsome.tech/learn/kafka-course/m02l03) | [5 labs](labs/m02l03/) | Pro |
| 2.4 | [Batching, Linger And Throughput](https://learnsome.tech/learn/kafka-course/m02l04) | [5 labs](labs/m02l04/) | Pro |
| 2.5 | [Idempotent Producers And Retries](https://learnsome.tech/learn/kafka-course/m02l05) | [5 labs](labs/m02l05/) | Pro |

### Module 3: Consumers And Consumer Groups

| # | Lesson | Labs | Access |
| --- | --- | --- | --- |
| 3.1 | [A Consumer In Python](https://learnsome.tech/learn/kafka-course/m03l01) | [5 labs](labs/m03l01/) | Pro |
| 3.2 | [Consumer Groups And Partition Assignment](https://learnsome.tech/learn/kafka-course/m03l02) | [5 labs](labs/m03l02/) | Pro |
| 3.3 | [Committing Offsets: Auto, Manual And Lag](https://learnsome.tech/learn/kafka-course/m03l03) | [6 labs](labs/m03l03/) | Pro |
| 3.4 | [Rebalancing And Its Cost](https://learnsome.tech/learn/kafka-course/m03l04) | [5 labs](labs/m03l04/) | Pro |
| 3.5 | [At Most Once, At Least Once](https://learnsome.tech/learn/kafka-course/m03l05) | [7 labs](labs/m03l05/) | Pro |

### Module 4: Delivery Guarantees And Transactions

| # | Lesson | Labs | Access |
| --- | --- | --- | --- |
| 4.1 | [Duplicates Are The Default](https://learnsome.tech/learn/kafka-course/m04l01) | [4 labs](labs/m04l01/) | Pro |
| 4.2 | [Idempotent Consumers And Deduplication Keys](https://learnsome.tech/learn/kafka-course/m04l02) | [4 labs](labs/m04l02/) | Pro |
| 4.3 | [Transactions And Exactly Once Semantics](https://learnsome.tech/learn/kafka-course/m04l03) | [5 labs](labs/m04l03/) | Pro |
| 4.4 | [Poison Messages And Dead Letter Topics](https://learnsome.tech/learn/kafka-course/m04l04) | [5 labs](labs/m04l04/) | Pro |
| 4.5 | [Retries With Backoff Topics](https://learnsome.tech/learn/kafka-course/m04l05) | [5 labs](labs/m04l05/) | Pro |

### Module 5: Schemas, Serialisation And Evolution

| # | Lesson | Labs | Access |
| --- | --- | --- | --- |
| 5.1 | [Bytes On The Wire: JSON, Avro And Protobuf](https://learnsome.tech/learn/kafka-course/m05l01) | [5 labs](labs/m05l01/) | Pro |
| 5.2 | [The Schema Registry](https://learnsome.tech/learn/kafka-course/m05l02) | [6 labs](labs/m05l02/) | Pro |
| 5.3 | [Compatibility Modes](https://learnsome.tech/learn/kafka-course/m05l03) | [5 labs](labs/m05l03/) | Pro |
| 5.4 | [Evolving An Event Without Breaking Consumers](https://learnsome.tech/learn/kafka-course/m05l04) | [6 labs](labs/m05l04/) | Pro |
| 5.5 | [Headers, Envelopes And Event Metadata](https://learnsome.tech/learn/kafka-course/m05l05) | [5 labs](labs/m05l05/) | Pro |

### Module 6: Event-Driven: Outbox, CDC, Compaction

| # | Lesson | Labs | Access |
| --- | --- | --- | --- |
| 6.1 | [Dual Writes And Why They Lose Data](https://learnsome.tech/learn/kafka-course/m06l01) | [6 labs](labs/m06l01/) | Pro |
| 6.2 | [The Transactional Outbox](https://learnsome.tech/learn/kafka-course/m06l02) | [7 labs](labs/m06l02/) | Pro |
| 6.3 | [Change Data Capture In Principle](https://learnsome.tech/learn/kafka-course/m06l03) | [4 labs](labs/m06l03/) | Pro |
| 6.4 | [Log Compaction: A Topic As A Table](https://learnsome.tech/learn/kafka-course/m06l04) | [6 labs](labs/m06l04/) | Pro |
| 6.5 | [Materialised Views From A Stream](https://learnsome.tech/learn/kafka-course/m06l05) | [5 labs](labs/m06l05/) | Pro |

### Module 7: Operating A Cluster

| # | Lesson | Labs | Access |
| --- | --- | --- | --- |
| 7.1 | [Three Brokers: Replication And Leaders](https://learnsome.tech/learn/kafka-course/m07l01) | [3 labs](labs/m07l01/) | Pro |
| 7.2 | [In-Sync Replicas And Minimum ISR](https://learnsome.tech/learn/kafka-course/m07l02) | [4 labs](labs/m07l02/) | Pro |
| 7.3 | [Losing A Broker](https://learnsome.tech/learn/kafka-course/m07l03) | [5 labs](labs/m07l03/) | Pro |
| 7.4 | [Watching Lag And Sizing Partitions](https://learnsome.tech/learn/kafka-course/m07l04) | [5 labs](labs/m07l04/) | Pro |
| 7.5 | [When Kafka Is The Wrong Tool](https://learnsome.tech/learn/kafka-course/m07l05) | [3 labs](labs/m07l05/) | Pro |

**Free** lessons are open to anyone with a free LearnSome.tech account; **Pro** lessons need a Pro membership to watch, run and grade on the site.

## Licence

- **Code** (starter files, `check` and `.learnsome/`, the dev container and the workflows) is under the [MIT licence](LICENSE).
- **Written text** (the READMEs, lab instructions, lesson text, exercises and questions) is under [CC BY-NC-SA 4.0](LICENSE-text.md): share and adapt it with attribution to LearnSome.tech, not commercially, under the same licence.
- The LearnSome.tech name and logo are not covered by either licence.

## Contributing and security

This repository is generated from the course. Report a broken lab or a content error [as an issue](../../issues/new/choose); see [CONTRIBUTING.md](CONTRIBUTING.md). Security reports go to [SECURITY.md](SECURITY.md).

© 2026 LearnSome.tech
