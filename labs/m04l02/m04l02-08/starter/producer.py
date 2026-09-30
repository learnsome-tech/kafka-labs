from kafka import KafkaProducer
import json

producer = KafkaProducer(
    bootstrap_servers='m04l02-broker:9092',
    value_serializer=lambda v: json.dumps(v).encode()
)
events = [
    ('order-1', 'evt-a', 100),
    ('order-2', 'evt-b', 200),
    ('order-1', 'evt-a', 100),
    ('order-3', 'evt-c', 300),
    ('order-2', 'evt-b', 200),
]
for key, event_id, amount in events:
    producer.send('m04l02-events',
        key=key.encode(),
        value={'event_id': event_id, 'amount': amount})
producer.flush()
print('produced 5 records (2 are duplicates)')
