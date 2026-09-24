# Apache Kafka & Event Streaming — lesson m05l04 — Evolving An Event Without Breaking Consumers
# https://learnsome.tech/courses/kafka-course/watch?lesson=m05l04
# © LearnSome.tech
from kafka import KafkaConsumer
import json

c = KafkaConsumer(
    'm05l04-events',
    bootstrap_servers='m05l04-broker:9092',
    auto_offset_reset='earliest',
    group_id='m05l04-readers',
    value_deserializer=lambda v: json.loads(v.decode()),
    consumer_timeout_ms=3000
)
for msg in c:
    v = msg.value
    print(f'id={v["id"]} amount={v["amount"]}')
c.close(autocommit=False)
