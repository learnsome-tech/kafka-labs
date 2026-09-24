# Apache Kafka & Event Streaming — lesson m04l04 — Poison Messages And Dead Letter Topics
# https://learnsome.tech/courses/kafka-course/watch?lesson=m04l04
# © LearnSome.tech
FROM python:3.12-alpine
RUN pip install --no-cache-dir --quiet kafka-python==2.2.15
WORKDIR /app
COPY . /app
CMD ["python", "-c", "import kafka; print(kafka.__version__)"]
