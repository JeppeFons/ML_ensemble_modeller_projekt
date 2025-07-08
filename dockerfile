FROM python:3.10-slim

WORKDIR /app

COPY requirements.txt .

# Installer git og pip dependencies, og ryd op for at holde image small
RUN apt-get update && \
    apt-get install -y git && \
    pip install --no-cache-dir -r requirements.txt && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

COPY XGBoost_1.py .

CMD ["python", "XGBoost_1.py"]









