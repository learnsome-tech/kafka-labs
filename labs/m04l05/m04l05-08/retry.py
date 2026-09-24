# Apache Kafka & Event Streaming — lesson m04l05 — Retries With Backoff Topics
# https://learnsome.tech/courses/kafka-course/watch?lesson=m04l05
# © LearnSome.tech
from kafka import KafkaConsumer, KafkaProducer
import json

TIERS = ['m04l05-orders', 'm04l05-retry-1',
         'm04l05-retry-2', 'm04l05-dlq']
prod = KafkaProducer(
    bootstrap_servers='m04l05-broker:9092',
    value_serializer=lambda v: json.dumps(v).encode()
)
for i, topic in enumerate(TIERS[:-1]):
    cons = KafkaConsumer(topic,
        bootstrap_servers='m04l05-broker:9092',
        auto_offset_reset='earliest',
        group_id=f'm04l05-g{i}',
        value_deserializer=lambda v: json.loads(v.decode()),
        consumer_timeout_ms=2000)
    for msg in cons:
        val = dict(msg.value); val['attempt'] = i + 1
        dest = TIERS[i + 1]
        prod.send(dest, key=msg.key, value=val)
        print(f'{topic} -> {dest} (attempt {i+1})')
    cons.close(); prod.flush()
