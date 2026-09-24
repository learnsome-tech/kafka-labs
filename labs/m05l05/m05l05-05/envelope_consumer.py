# Apache Kafka & Event Streaming — lesson m05l05 — Headers, Envelopes And Event Metadata
# https://learnsome.tech/courses/kafka-course/watch?lesson=m05l05
# © LearnSome.tech
from kafka import KafkaConsumer
import json

c = KafkaConsumer(
    'm05l05-events',
    bootstrap_servers='m05l05-broker:9092',
    auto_offset_reset='earliest',
    consumer_timeout_ms=3000
)
for msg in c:
    for k, v in msg.headers:
        print(f'header: {k}={v.decode()}')
    env = json.loads(msg.value)
    print(f'type={env["event_type"]} ver={env["event_version"]}')
    print(f'payload={env["payload"]}')
c.close(autocommit=False)
