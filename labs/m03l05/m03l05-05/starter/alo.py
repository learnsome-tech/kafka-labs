import sys
from kafka import KafkaConsumer
crash = '--crash' in sys.argv
c = KafkaConsumer(
    'm03l05-events',
    bootstrap_servers='m03l05-broker:9092',
    auto_offset_reset='earliest',
    enable_auto_commit=False,
    consumer_timeout_ms=3000,
    group_id='m03l05-pipeline',
)
for msg in c:
    v = msg.value.decode().strip()
    print(f'processed p={msg.partition} o={msg.offset} v={v}')
    if crash and msg.offset == 2:
        print('simulated crash')
        c.close(autocommit=False)
        sys.exit(1)
c.commit()
c.close()
