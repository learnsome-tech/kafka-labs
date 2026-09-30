import logging
logging.getLogger('kafka').setLevel(logging.ERROR)
from kafka import KafkaProducer
producer = KafkaProducer(
    bootstrap_servers='m02l05-broker:9092',
    acks='all',
    retries=0
)
topic = 'm02l05-dup'
for i in range(3):
    m = producer.send(topic, value=f'payment-{i}'.encode()).get(timeout=10)
    print(f'original offset {m.offset}')
for i in range(3):
    m = producer.send(topic, value=f'payment-{i}'.encode()).get(timeout=10)
    print(f'retry offset {m.offset}')
producer.close()
