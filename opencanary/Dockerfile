FROM python:3.10-slim

RUN apt-get update && apt-get install -y \
    build-essential \
    libssl-dev \
    libffi-dev \
    uuid-dev \
    && rm -rf /var/lib/apt/lists/*

RUN pip install --no-cache-dir opencanary

RUN mkdir -p /root/.opencanary/
COPY opencanary.conf /root/.opencanary/opencanary.conf

EXPOSE 2121 2222 8020

CMD ["opencanaryd", "--dev"]
