# Apache Kafka & Event Streaming — lesson m07l04 — Watching Lag And Sizing Partitions
# https://learnsome.tech/courses/kafka-course/watch?lesson=m07l04
# © LearnSome.tech
from kafka import KafkaProducer
p = KafkaProducer(
    bootstrap_servers="m07l04-b1:9092")
for i in range(5):
    p.send(
        "m07l04-ev",
        partition=0,
        key=f"k{i}".encode(),
        value=f"v{i}".encode()
    ).get(timeout=10)
    print(f"partition 0 offset {i}")
p.close()
