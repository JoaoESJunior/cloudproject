
# Dockerfile para o ML Container
FROM python:3.9-slim-bullseye
WORKDIR /app
COPY requirements.ml.txt .
RUN pip install --no-cache-dir -r requirements.ml.txt
COPY scripts/train_model.py .
CMD ["python", "train_model.py"]
