from kafka import KafkaConsumer
import json, os
SEEN = '/app/seen.txt'
seen = set(open(SEEN).read().split()) if os.path.exists(SEEN) else set()
consumer = KafkaConsumer(
    'm04l02-events',
    bootstrap_servers='m04l02-broker:9092',
    auto_offset_reset='earliest',
    group_id='m04l02-dedup',
    value_deserializer=lambda v: json.loads(v.decode()),
    consumer_timeout_ms=3000
)
total, skipped = 0, 0
for msg in consumer:
    eid = msg.value['event_id']
    total += 1
    if eid in seen:
        skipped += 1; continue
    seen.add(eid)
with open(SEEN, 'w') as f:
    f.write('\n'.join(seen))
print(f'total={total} processed={total-skipped} skipped={skipped}')
