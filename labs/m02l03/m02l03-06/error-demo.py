# Apache Kafka & Event Streaming — lesson m02l03 — Acknowledgements: What Acks Means For Durability
# https://learnsome.tech/courses/kafka-course/watch?lesson=m02l03
# © LearnSome.tech
import logging
logging.getLogger('kafka').setLevel(logging.ERROR)
from kafka import KafkaProducer
from kafka.errors import KafkaError
producer = KafkaProducer(
    bootstrap_servers='m02l03-broker:9092',
    acks='all',
    retries=0
)
try:
    future = producer.send('m02l03-reliable', value=b'data')
    future.get(timeout=10)
    print('delivered')
except KafkaError as e:
    print(f'error: {e.__class__.__name__}')
producer.close()
