from kafka import KafkaConsumer, ConsumerRebalanceListener
class Report(ConsumerRebalanceListener):
    def on_partitions_revoked(self, revoked): pass
    def on_partitions_assigned(self, assigned):
        for n in sorted(p.partition for p in assigned):
            print(f'assigned partition {n}')
c = KafkaConsumer(bootstrap_servers='m03l02-broker:9092',
                  group_id='m03l02-billing', auto_offset_reset='earliest',
                  consumer_timeout_ms=3000)
c.subscribe(['m03l02-events'], listener=Report())
records = []
for msg in c:
    records.append((msg.partition, msg.offset, msg.value.decode().strip()))
records.sort()
for p, o, v in records: print(f'p={p} o={o} v={v}')
c.close()
