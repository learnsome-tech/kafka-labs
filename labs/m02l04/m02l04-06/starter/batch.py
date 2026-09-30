import logging
logging.getLogger('kafka').setLevel(logging.ERROR)
from kafka import KafkaProducer
producer = KafkaProducer(
    bootstrap_servers='m02l04-broker:9092',
    batch_size=16384,
    linger_ms=50,
    compression_type='gzip'
)
for i in range(10):
    producer.send('m02l04-ev', value=f'msg-{i}'.encode())
producer.flush()
print('batched: sent ten records with gzip compression')
producer.close()
