# AWS N8N Collection Docker Image
# Comprehensive automation workflows for AWS services and beyond
# Author: beands (https://beands-media.ru)

FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 8000

CMD ["python", "run.py", "--host", "0.0.0.0", "--port", "8000"]
