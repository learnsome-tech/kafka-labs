FROM python:3.12-alpine
RUN pip install --no-cache-dir --quiet \
    kafka-python==2.2.15 "psycopg[binary]==3.2.3"
WORKDIR /app
COPY . /app
