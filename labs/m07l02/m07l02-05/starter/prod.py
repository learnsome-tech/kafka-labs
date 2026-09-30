from kafka import KafkaProducer
p = KafkaProducer(
    bootstrap_servers="m07l02-b1:9092",
    acks="all")
for i in range(3):
    p.send(
        "m07l02-events",
        partition=0,
        value=f"msg-{i}".encode()
    ).get(timeout=10)
    print(f"sent msg-{i} with acks-all")
p.close()
