# Apache Kafka & Event Streaming — lesson m06l01 — Dual Writes And Why They Lose Data
# https://learnsome.tech/courses/kafka-course/watch?lesson=m06l01
# © LearnSome.tech
from kafka import KafkaProducer
producer = KafkaProducer(
    bootstrap_servers='m06l01-broker:9092')
producer.send('m06l01-events', key=b'order', value=b'keyboard')
producer.flush()
print("event published to kafka")
print("error: database unreachable - row not inserted")
producer.close()
