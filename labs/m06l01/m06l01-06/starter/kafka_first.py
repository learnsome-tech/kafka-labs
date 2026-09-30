from kafka import KafkaProducer
producer = KafkaProducer(
    bootstrap_servers='m06l01-broker:9092')
producer.send('m06l01-events', key=b'order', value=b'keyboard')
producer.flush()
print("event published to kafka")
print("error: database unreachable - row not inserted")
producer.close()
