#!/bin/bash

echo "==============================================================================="
echo "  MODEL TO BE SERVED IS -> ${MODEL}"
echo "==============================================================================="

if [ -z "${MODEL}" ]; then
  echo "ERROR: you set a model as ENV variable"
  echo "export MODEL=deepseek-r1:1.5b"
  exit 1
fi

ollama serve &
sleep 5 # Just to be sure the ollama server is running
ollama pull ${MODEL} # deepseek-r1:1.5b

echo "OLLAMA is ready"
while true; do sleep 60 ; done
