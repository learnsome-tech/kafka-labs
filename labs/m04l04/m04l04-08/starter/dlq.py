from kafka import KafkaConsumer, KafkaProducer
import json

src = KafkaConsumer('m04l04-orders',
    bootstrap_servers='m04l04-broker:9092',
    auto_offset_reset='earliest',
    group_id='m04l04-processor',
    consumer_timeout_ms=3000)
dlq = KafkaProducer(
    bootstrap_servers='m04l04-broker:9092')
processed, failed = 0, 0
for msg in src:
    try:
        json.loads(msg.value); processed += 1
    except json.JSONDecodeError as e:
        failed += 1
        dlq.send('m04l04-dlq', key=msg.key,
            value=msg.value,
            headers=[('error', str(e).encode())])
dlq.flush()
print(f'processed={processed} routed-to-dlq={failed}')
