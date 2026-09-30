from kafka import KafkaProducer
import json

p = KafkaProducer(
    bootstrap_servers='m05l04-broker:9092',
    value_serializer=lambda v: json.dumps(v).encode()
)
for i in range(3, 5):
    p.send('m05l04-events',
           key=f'order-{i}'.encode(),
           value={'id': i, 'amount': i * 10, 'currency': 'USD'})
p.flush()
print('v2: sent 2 records with currency field')
p.close()
