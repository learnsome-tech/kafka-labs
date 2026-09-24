# Apache Kafka & Event Streaming — lesson m04l04 — Poison Messages And Dead Letter Topics
# https://learnsome.tech/courses/kafka-course/watch?lesson=m04l04
# © LearnSome.tech
from kafka import KafkaConsumer

consumer = KafkaConsumer(
    'm04l04-dlq',
    bootstrap_servers='m04l04-broker:9092',
    auto_offset_reset='earliest',
    group_id='m04l04-dlq-reader',
    consumer_timeout_ms=3000
)
for msg in consumer:
    err = dict(msg.headers).get('error', b'').decode()
    print(f'{msg.key.decode()} | {msg.value.decode()} | {err}')
