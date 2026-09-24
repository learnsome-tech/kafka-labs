# Apache Kafka & Event Streaming — lesson m07l03 — Losing A Broker
# https://learnsome.tech/courses/kafka-course/watch?lesson=m07l03
# © LearnSome.tech
from kafka import KafkaProducer
from kafka.errors import KafkaTimeoutError
p = KafkaProducer(
    bootstrap_servers="m07l03-b1:9092",
    acks="all",
    request_timeout_ms=4000,
    max_block_ms=5000)
try:
    f = p.send("m07l03-orders", value=b"data")
    f.get(timeout=4)
    print("write succeeded")
except KafkaTimeoutError:
    print("write blocked: not enough replicas")
finally:
    p.close()
