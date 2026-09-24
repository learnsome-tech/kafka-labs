# Apache Kafka & Event Streaming — lesson m06l05 — Materialised Views From A Stream
# https://learnsome.tech/courses/kafka-course/watch?lesson=m06l05
# © LearnSome.tech
from kafka import KafkaConsumer
import json
consumer = KafkaConsumer(
    'm06l05-orders',
    bootstrap_servers='m06l05-broker:9092',
    auto_offset_reset='earliest',
    group_id='m06l05-rebuild',
    value_deserializer=lambda v: json.loads(v.decode()),
    consumer_timeout_ms=3000)
totals = {}
for msg in consumer:
    cust = msg.key.decode()
    totals[cust] = totals.get(cust, 0) + msg.value['amount']
consumer.close(autocommit=False)
for cust in sorted(totals):
    print(f'{cust}: {totals[cust]}')
