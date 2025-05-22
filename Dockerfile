# Dockerfile
FROM python:3.11-slim
WORKDIR /app

ENV FLASK_APP=app.py
ENV FLASK_ENV=development
ENV PORT 5001

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY . .
CMD ["python", "app.py"]