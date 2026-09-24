# Apache Kafka & Event Streaming — lesson m02l02 — Keys And Ordering Per Partition
# https://learnsome.tech/courses/kafka-course/watch?lesson=m02l02
# © LearnSome.tech
import logging
logging.getLogger('kafka').setLevel(logging.ERROR)
from kafka import KafkaProducer
producer = KafkaProducer(
    bootstrap_servers='m02l02-broker:9092',
    key_serializer=lambda k: k.encode()
)
topic = 'm02l02-keys'
keys = ['order-1', 'order-2']
for i in range(6):
    key = keys[i % 2]
    val = f'{key}-v{i}'.encode()
    future = producer.send(topic, key=key, value=val)
    meta = future.get(timeout=10)
    print(f'key {key} partition {meta.partition} offset {meta.offset}')
producer.close()
