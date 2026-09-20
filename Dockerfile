FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY train.py .
COPY predict.py .

RUN mkdir -p /app/outputs /workspace /workspace/data /workspace/datasets

CMD ["python", "train.py"]
