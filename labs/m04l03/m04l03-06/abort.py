# Apache Kafka & Event Streaming — lesson m04l03 — Transactions And Exactly Once Semantics
# https://learnsome.tech/courses/kafka-course/watch?lesson=m04l03
# © LearnSome.tech
from kafka import KafkaProducer, KafkaConsumer
import json
prod = KafkaProducer(
    bootstrap_servers='m04l03-broker:9092',
    transactional_id='m04l03-txn-2',
    value_serializer=lambda v: json.dumps(v).encode()
)
prod.init_transactions()
prod.begin_transaction()
for k in ['ord-x', 'ord-y', 'ord-z']:
    prod.send('m04l03-aborted',
        key=k.encode(), value={'status': 'pending'})
prod.abort_transaction(); prod.close()
cons = KafkaConsumer(
    'm04l03-aborted',
    bootstrap_servers='m04l03-broker:9092',
    auto_offset_reset='earliest',
    group_id='m04l03-abort-chk',
    isolation_level='read_committed',
    consumer_timeout_ms=3000
)
print(f'read_committed saw {len(list(cons))} record(s)')
