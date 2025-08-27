FROM python:3.11-slim

WORKDIR /app

COPY src/api/ .

COPY models/trained/*.pkl models/trained/

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8888

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8888"]