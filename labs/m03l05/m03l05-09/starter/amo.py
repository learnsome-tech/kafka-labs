from kafka import KafkaConsumer
c = KafkaConsumer(
    'm03l05-events',
    bootstrap_servers='m03l05-broker:9092',
    auto_offset_reset='earliest',
    enable_auto_commit=False,
    consumer_timeout_ms=3000,
    group_id='m03l05-amo',
)
for msg in c:
    c.commit()
    v = msg.value.decode().strip()
    print(f'safe p={msg.partition} o={msg.offset} v={v}')
c.close()
