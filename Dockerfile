FROM python:3.10-slim

WORKDIR /app

COPY requirement .

RUN pip install -r requirement 

COPY . .

EXPOSE 8000

ENTRYPOINT ["python", "app.py"]
