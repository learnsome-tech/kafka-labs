# Apache Kafka & Event Streaming — lesson m02l01 — A Producer In Python
# https://learnsome.tech/courses/kafka-course/watch?lesson=m02l01
# © LearnSome.tech
import logging
logging.getLogger('kafka').setLevel(logging.ERROR)
from kafka import KafkaProducer
producer = KafkaProducer(
    bootstrap_servers='m02l01-broker:9092'
)
topic = 'm02l01-ev'
for i in range(10):
    future = producer.send(topic, value=f'record-{i}'.encode())
    meta = future.get(timeout=10)
    print(f'partition {meta.partition} offset {meta.offset}')
producer.close()
