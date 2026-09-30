from kafka import KafkaProducer
import json

p = KafkaProducer(bootstrap_servers='m05l05-broker:9092')
envelope = {
    'event_id': 'evt-001',
    'event_type': 'order.created',
    'event_version': 1,
    'occurred_at': '2024-01-15T10:00:00Z',
    'payload': {'id': 42, 'total': 99}
}
headers = [
    ('content-type', b'application/json'),
    ('schema-version', b'1'),
]
p.send('m05l05-events',
       key=b'order-42',
       value=json.dumps(envelope).encode(),
       headers=headers)
p.flush()
print('sent 1 envelope record with 2 headers')
p.close()
