FROM python:3.12-slim

WORKDIR /app
COPY app.py .

RUN groupadd -r appuser && useradd -r -g appuser appuser

USER appuser

CMD ["python", "app.py"]
