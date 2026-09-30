from kafka import KafkaConsumer
import json

cons = KafkaConsumer('m04l05-dlq',
    bootstrap_servers='m04l05-broker:9092',
    auto_offset_reset='earliest',
    group_id='m04l05-dlq-check',
    value_deserializer=lambda v: json.loads(v.decode()),
    consumer_timeout_ms=3000)
for msg in cons:
    print(f'{msg.key.decode()} attempt={msg.value["attempt"]}')
