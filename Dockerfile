FROM python:3.8-slim-buster

WORKDIR /app

COPY requirements.txt requirements.txt

RUN pip3 install -r requirements.txt

COPY . .

RUN echo "hello world"

CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0"]

