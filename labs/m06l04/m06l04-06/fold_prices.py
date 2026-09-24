# Apache Kafka & Event Streaming — lesson m06l04 — Log Compaction: A Topic As A Table
# https://learnsome.tech/courses/kafka-course/watch?lesson=m06l04
# © LearnSome.tech
from kafka import KafkaConsumer
consumer = KafkaConsumer(
    'm06l04-prices',
    bootstrap_servers='m06l04-broker:9092',
    auto_offset_reset='earliest',
    group_id='m06l04-fold',
    consumer_timeout_ms=3000)
table = {}
for msg in consumer:
    table[msg.key.decode()] = msg.value.decode()
consumer.close(autocommit=False)
for key in sorted(table):
    print(f'{key}: {table[key]}')
