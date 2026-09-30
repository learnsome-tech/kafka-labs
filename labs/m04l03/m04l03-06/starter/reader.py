from kafka import KafkaConsumer
import json

consumer = KafkaConsumer(
    'm04l03-results',
    bootstrap_servers='m04l03-broker:9092',
    auto_offset_reset='earliest',
    group_id='m04l03-reader',
    isolation_level='read_committed',
    value_deserializer=lambda v: json.loads(v.decode()),
    consumer_timeout_ms=3000
)
records = []
for msg in consumer:
    records.append(msg.key.decode())
print(f'read_committed saw {len(records)} record(s)')
for key in records:
    print(f'  {key}')
