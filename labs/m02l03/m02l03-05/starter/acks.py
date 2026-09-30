import logging
logging.getLogger('kafka').setLevel(logging.ERROR)
from kafka import KafkaProducer
b = 'm02l03-broker:9092'
p0 = KafkaProducer(bootstrap_servers=b, acks=0)
p0.send('m02l03-fire', value=b'payload')
p0.flush()
print('acks zero: sent without waiting for any response')
p0.close()
p1 = KafkaProducer(bootstrap_servers=b, acks=1)
m = p1.send('m02l03-leader', value=b'payload').get(timeout=10)
print(f'acks one: partition {m.partition} offset {m.offset}')
p1.close()
pa = KafkaProducer(bootstrap_servers=b, acks='all')
m = pa.send('m02l03-all', value=b'payload').get(timeout=10)
print(f'acks all: partition {m.partition} offset {m.offset}')
pa.close()
