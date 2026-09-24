# Apache Kafka & Event Streaming — lesson m03l01 — A Consumer In Python
# https://learnsome.tech/courses/kafka-course/watch?lesson=m03l01
# © LearnSome.tech
from kafka import KafkaConsumer
c = KafkaConsumer(
    'm03l01-events',
    bootstrap_servers='m03l01-broker:9092',
    auto_offset_reset='earliest',
    consumer_timeout_ms=3000,
    group_id='m03l01-readers',
)
for msg in c:
    k = msg.key.decode() if msg.key else ''
    v = msg.value.decode().strip()
    print(f'p={msg.partition} o={msg.offset} k={k} v={v}')
c.close()
