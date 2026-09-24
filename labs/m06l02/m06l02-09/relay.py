# Apache Kafka & Event Streaming — lesson m06l02 — The Transactional Outbox
# https://learnsome.tech/courses/kafka-course/watch?lesson=m06l02
# © LearnSome.tech
from kafka import KafkaProducer
import psycopg
p = KafkaProducer(bootstrap_servers='m06l02-broker:9092')
conn = psycopg.connect(
    "host=m06l02-db dbname=postgres user=postgres password=secret")
cur = conn.cursor()
cur.execute("SELECT id,event_key,payload FROM outbox "
            "WHERE published=false ORDER BY id")
rows = cur.fetchall()
for rid, key, val in rows:
    p.send('m06l02-events', key=key.encode(), value=val.encode())
if rows:
    p.flush(); ids = [r[0] for r in rows]
    cur.execute("UPDATE outbox SET published=true "
                "WHERE id=ANY(%s)", (ids,))
conn.commit(); conn.close()
print(f'relayed {len(rows)} event(s)')
