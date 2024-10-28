## Lanchain API Dockerfile

FROM python:3.12-slim

RUN pip install "langserve[all]"
RUN pip install langchain langchain-community langchain-openai langchain-anthropic

RUN mkdir /app
WORKDIR /app

COPY serve.py .

CMD ["python3", "serve.py"]