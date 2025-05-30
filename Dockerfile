FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .
RUN apt-get update && apt-get install -y gcc libpq-dev && pip install -r requirements.txt

COPY . .

CMD ["python", "app.py"]
