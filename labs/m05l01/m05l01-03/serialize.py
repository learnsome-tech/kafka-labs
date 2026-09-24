# Apache Kafka & Event Streaming — lesson m05l01 — Bytes On The Wire: JSON, Avro And Protobuf
# https://learnsome.tech/courses/kafka-course/watch?lesson=m05l01
# © LearnSome.tech
from kafka import KafkaProducer
import json, struct

p = KafkaProducer(bootstrap_servers='m05l01-broker:9092')
event = {"type": "order", "id": 42, "total": 99}
json_bytes = json.dumps(event).encode()
bin_bytes = struct.pack('!BIH', 1, 42, 99)
p.send('m05l01-json', key=b'order', value=json_bytes)
p.send('m05l01-binary', key=b'order', value=bin_bytes)
p.flush()
ratio = len(json_bytes) / len(bin_bytes)
print(f'json={len(json_bytes)} binary={len(bin_bytes)} ratio={ratio:.1f}x')
p.close()
