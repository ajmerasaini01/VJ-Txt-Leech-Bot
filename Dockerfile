# नया Python + Debian Bullseye बेस
FROM python:3.12-slim-bullseye

# जरूरी पैकेज इंस्टॉल
RUN apt-get update -y \
 && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    gcc libffi-dev libc6-dev ffmpeg aria2 python3-pip \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

# अगर requirements.txt है तो इंस्टॉल करो
# COPY requirements.txt .
# RUN pip install --no-cache-dir -r requirements.txt

# कोड कॉपी करो
# COPY . /app
# WORKDIR /app

# Default command
# CMD ["python3", "main.py"]
