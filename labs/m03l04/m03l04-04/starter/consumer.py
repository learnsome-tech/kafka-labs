from kafka import KafkaConsumer, ConsumerRebalanceListener
class Report(ConsumerRebalanceListener):
    def on_partitions_revoked(self, revoked): pass
    def on_partitions_assigned(self, assigned):
        for n in sorted(p.partition for p in assigned):
            print(f'rebalance: got partition {n}')
c = KafkaConsumer(bootstrap_servers='m03l04-broker:9092',
                  group_id='m03l04-workers', auto_offset_reset='earliest',
                  consumer_timeout_ms=4000, session_timeout_ms=15000,
                  heartbeat_interval_ms=5000, max_poll_interval_ms=30000)
c.subscribe(['m03l04-events'], listener=Report())
records = []
for msg in c:
    records.append((msg.partition, msg.offset, msg.value.decode().strip()))
records.sort()
for p, o, v in records: print(f'p={p} o={o} v={v}')
c.close()
