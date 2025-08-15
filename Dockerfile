FROM python:3.10.8-slim-buster
R# Python 3.12 slim बेस इमेज
FROM python:3.12-slim

# पैकेज इंस्टॉल करना
RUN apt-get update -y \
 && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    gcc \
    libffi-dev \
    libc6-dev \
    ffmpeg \
    aria2 \
    python3-pip \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

# अगर आपके प्रोजेक्ट में requirements.txt है
# तो यहाँ dependencies इंस्टॉल करें
# COPY requirements.txt .
# RUN pip install --no-cache-dir -r requirements.txt

# आपका कोड कॉपी करें
# COPY . /app
# WORKDIR /app

# Default command
# CMD ["python3", "main.py"]
