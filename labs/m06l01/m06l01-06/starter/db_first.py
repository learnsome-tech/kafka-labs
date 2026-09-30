import psycopg
conn = psycopg.connect(
    "host=m06l01-db dbname=postgres user=postgres password=secret")
conn.autocommit = True
cur = conn.cursor()
cur.execute("INSERT INTO orders (item) VALUES ('keyboard')")
print("row inserted into orders")
print("error: kafka unreachable - event not published")
cur.close()
conn.close()
