# Apache Kafka & Event Streaming — lesson m02l05 — Idempotent Producers And Retries
# https://learnsome.tech/courses/kafka-course/watch?lesson=m02l05
# © LearnSome.tech
import logging
logging.getLogger('kafka').setLevel(logging.ERROR)
from kafka import KafkaProducer
producer = KafkaProducer(
    bootstrap_servers='m02l05-broker:9092',
    acks='all',
    enable_idempotence=True,
    max_in_flight_requests_per_connection=1
)
topic = 'm02l05-idemp'
for i in range(3):
    m = producer.send(topic, value=f'payment-{i}'.encode()).get(timeout=10)
    print(f'offset {m.offset}')
producer.close()
