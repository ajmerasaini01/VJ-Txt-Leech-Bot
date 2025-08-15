FROM python:3.12-slim-bullseye

RUN apt-get update -y \
 && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    gcc libffi-dev libc6-dev ffmpeg aria2 python3-pip \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . /app
WORKDIR /app

# Pyrogram bot run करेगा
CMD ["python3", "main.py"]
