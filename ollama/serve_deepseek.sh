#!/bin/bash

ollama serve &
sleep 5 # Just to be sure the ollama server is running
ollama pull deepseek-r1:1.5b

echo "OLLAMA is ready"
while true; do sleep 60 ; done
