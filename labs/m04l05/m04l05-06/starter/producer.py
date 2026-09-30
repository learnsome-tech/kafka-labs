from kafka import KafkaProducer
import json

producer = KafkaProducer(
    bootstrap_servers='m04l05-broker:9092',
    value_serializer=lambda v: json.dumps(v).encode()
)
producer.send('m04l05-orders',
    key=b'pay-1',
    value={'amount': 99, 'attempt': 0})
producer.flush()
print('produced 1 record to m04l05-orders')
