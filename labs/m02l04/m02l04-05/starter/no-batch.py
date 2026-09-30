import logging
logging.getLogger('kafka').setLevel(logging.ERROR)
from kafka import KafkaProducer
producer = KafkaProducer(
    bootstrap_servers='m02l04-broker:9092',
    batch_size=1,
    linger_ms=0
)
for i in range(10):
    producer.send('m02l04-ev', value=f'msg-{i}'.encode())
producer.flush()
print('no-batch: sent ten records individually')
producer.close()
