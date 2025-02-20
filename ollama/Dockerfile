FROM ollama/ollama:latest

WORKDIR /app

COPY requirements.txt .

RUN apt update && \
    apt install \
      -y --no-install-recommends \
      iputils-ping \
      pip

RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt

