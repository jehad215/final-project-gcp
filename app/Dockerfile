FROM python:3.7

RUN mkdir /app

WORKDIR /app

COPY specifications.txt specifications.txt

RUN pip install -r specifications.txt

COPY . .

ENV ENVIRONMENT=DEV
ENV HOST=localhost
ENV PORT=8080
ENV REDIS_HOST=localhost
ENV REDIS_PORT=6379
ENV REDIS_DB=0

EXPOSE 8080

CMD ["python", "hello.py"]