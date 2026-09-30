from kafka import KafkaProducer

producer = KafkaProducer(
    bootstrap_servers='m04l04-broker:9092'
)
records = [
    ('ship-1', b'{"qty": 5}'),
    ('ship-2', b'INVALID-NOT-JSON'),
    ('ship-3', b'{"qty": 8}'),
    ('ship-4', b'{"qty": 3}'),
]
for key, value in records:
    producer.send('m04l04-orders',
        key=key.encode(), value=value)
producer.flush()
print('produced 4 records (one malformed)')
