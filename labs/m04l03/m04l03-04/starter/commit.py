from kafka import KafkaProducer
import json

producer = KafkaProducer(
    bootstrap_servers='m04l03-broker:9092',
    transactional_id='m04l03-txn-1',
    value_serializer=lambda v: json.dumps(v).encode()
)
producer.init_transactions()
producer.begin_transaction()
for order_id in ['ord-1', 'ord-2', 'ord-3']:
    producer.send('m04l03-results',
        key=order_id.encode(),
        value={'status': 'confirmed'})
producer.commit_transaction()
producer.close()
print('committed: 3 records in one transaction')
