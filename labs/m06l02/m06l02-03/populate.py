# Apache Kafka & Event Streaming — lesson m06l02 — The Transactional Outbox
# https://learnsome.tech/courses/kafka-course/watch?lesson=m06l02
# © LearnSome.tech
import psycopg
conn = psycopg.connect(
    "host=m06l02-db dbname=postgres user=postgres password=secret")
cur = conn.cursor()
cur.execute("INSERT INTO orders (item) VALUES ('widget') RETURNING id")
oid1 = cur.fetchone()[0]
cur.execute("INSERT INTO outbox (event_key, payload) VALUES (%s, %s)",
            (f'order-{oid1}', f'{{"id":{oid1},"item":"widget"}}'))
cur.execute("INSERT INTO orders (item) VALUES ('gadget') RETURNING id")
oid2 = cur.fetchone()[0]
cur.execute("INSERT INTO outbox (event_key, payload) VALUES (%s, %s)",
            (f'order-{oid2}', f'{{"id":{oid2},"item":"gadget"}}'))
conn.commit()
print("inserted 2 orders and 2 outbox rows in one transaction")
conn.close()
