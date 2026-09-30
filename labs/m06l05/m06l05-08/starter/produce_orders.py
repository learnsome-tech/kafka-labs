from kafka import KafkaProducer
import json
producer = KafkaProducer(
    bootstrap_servers='m06l05-broker:9092',
    value_serializer=lambda v: json.dumps(v).encode())
orders = [
    ('cust-a', 120), ('cust-b', 85), ('cust-a', 60),
    ('cust-c', 200), ('cust-b', 45), ('cust-a', 30),
]
for cust, amount in orders:
    producer.send('m06l05-orders',
                  key=cust.encode(), value={'amount': amount})
producer.flush()
print(f'produced {len(orders)} orders')
