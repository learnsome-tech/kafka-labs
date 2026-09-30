from kafka import KafkaConsumer
c = KafkaConsumer(
    "m07l04-ev",
    bootstrap_servers="m07l04-b1:9092",
    group_id="m07l04-grp",
    auto_offset_reset="earliest",
    enable_auto_commit=False,
    consumer_timeout_ms=3000)
count = 0
for msg in c:
    print(f"partition {msg.partition} offset {msg.offset}")
    count += 1
    if count == 2:
        c.commit()
        break
c.close()
