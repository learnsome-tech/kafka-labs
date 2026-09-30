rules = [
    ("scenario", "better fit"),
    ("request needs one reply", "HTTP or gRPC"),
    ("task done once per message", "RabbitMQ or SQS"),
    ("shared mutable state", "database table"),
    ("audit or replay needed", "Kafka"),
    ("fan-out to many consumers", "Kafka"),
    ("ordered stream per entity", "Kafka"),
]
col = max(len(r[0]) for r in rules)
for label, choice in rules:
    print(f"{label:<{col}}  {choice}")
