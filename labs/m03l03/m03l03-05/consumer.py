# Apache Kafka & Event Streaming — lesson m03l03 — Committing Offsets: Auto, Manual And Lag
# https://learnsome.tech/courses/kafka-course/watch?lesson=m03l03
# © LearnSome.tech
import sys
from kafka import KafkaConsumer
commit = '--commit' in sys.argv
c = KafkaConsumer(
    'm03l03-events',
    bootstrap_servers='m03l03-broker:9092',
    auto_offset_reset='earliest',
    enable_auto_commit=False,
    consumer_timeout_ms=3000,
    group_id='m03l03-auditors',
)
for msg in c:
    v = msg.value.decode().strip()
    print(f'p={msg.partition} o={msg.offset} v={v}')
if commit:
    c.commit()
    print('offset committed')
else:
    print('no commit made')
c.close()
