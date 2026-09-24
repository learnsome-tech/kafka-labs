# Apache Kafka & Event Streaming — lesson m07l02 — In-Sync Replicas And Minimum ISR
# https://learnsome.tech/courses/kafka-course/watch?lesson=m07l02
# © LearnSome.tech
from kafka import KafkaAdminClient
admin = KafkaAdminClient(
    bootstrap_servers="m07l02-b1:9092")
meta = admin.describe_topics(["m07l02-events"])
for t in meta:
    parts = sorted(t["partitions"],
                   key=lambda x: x["partition"])
    for p in parts:
        r = sorted(p["replicas"])
        s = sorted(p["isr"])
        print(
            f"partition {p['partition']}"
            f" replicas {r} in-sync {s}")
admin.close()
