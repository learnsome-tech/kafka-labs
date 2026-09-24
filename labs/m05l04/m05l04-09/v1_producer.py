# Apache Kafka & Event Streaming — lesson m05l04 — Evolving An Event Without Breaking Consumers
# https://learnsome.tech/courses/kafka-course/watch?lesson=m05l04
# © LearnSome.tech
from kafka import KafkaProducer
import json

p = KafkaProducer(
    bootstrap_servers='m05l04-broker:9092',
    value_serializer=lambda v: json.dumps(v).encode()
)
for i in range(1, 3):
    p.send('m05l04-events',
           key=f'order-{i}'.encode(),
           value={'id': i, 'amount': i * 10})
p.flush()
print('v1: sent 2 records')
p.close()
