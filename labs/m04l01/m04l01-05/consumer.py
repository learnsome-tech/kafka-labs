# Apache Kafka & Event Streaming — lesson m04l01 — Duplicates Are The Default
# https://learnsome.tech/courses/kafka-course/watch?lesson=m04l01
# © LearnSome.tech
from kafka import KafkaConsumer
import json

consumer = KafkaConsumer(
    'm04l01-events',
    bootstrap_servers='m04l01-broker:9092',
    auto_offset_reset='earliest',
    group_id='m04l01-counter',
    value_deserializer=lambda v: json.loads(v.decode()),
    consumer_timeout_ms=3000
)
counts = {}
for msg in consumer:
    key = msg.key.decode()
    counts[key] = counts.get(key, 0) + 1
for key in sorted(counts):
    print(f'{key}: {counts[key]}')
