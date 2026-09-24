# Apache Kafka & Event Streaming — lesson m04l01 — Duplicates Are The Default
# https://learnsome.tech/courses/kafka-course/watch?lesson=m04l01
# © LearnSome.tech
from kafka import KafkaProducer
import json

producer = KafkaProducer(
    bootstrap_servers='m04l01-broker:9092',
    value_serializer=lambda v: json.dumps(v).encode()
)
events = [
    ('order-1', {'amount': 100}),
    ('order-2', {'amount': 200}),
    ('order-3', {'amount': 300}),
]
for key, value in events:
    for _ in range(2):
        producer.send('m04l01-events',
            key=key.encode(), value=value)
producer.flush()
print('produced: 3 events, 6 records (each sent twice)')
