from kafka import KafkaProducer
producer = KafkaProducer(bootstrap_servers='m06l04-broker:9092')
updates = [
    (b'apple', b'1.20'), (b'banana', b'0.50'), (b'apple', b'1.25'),
    (b'cherry', b'3.00'), (b'banana', b'0.55'), (b'apple', b'1.30'),
]
for key, price in updates:
    producer.send('m06l04-prices', key=key, value=price)
producer.flush()
print(f'produced {len(updates)} price updates')
