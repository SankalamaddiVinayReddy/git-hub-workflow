# Dockerfile
FROM ghcr.io/sankalamaddivinayreddy/backend-base:dev

WORKDIR /app
COPY . /app

COPY requirements.txt /app/

RUN pip install --no-cache-dir -r requirements.txt

CMD ["python", "-m", "uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]

