# Ollama
---------------------------------------------------------------------------------------------------------------------
The `ollama` folder contains a way to run the model in a docker container. It can be executed without any problem in a
regular personal computer, but if you want to use GPUs you need to follow the:
[nvidia
documentation](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/latest/install-guide.html#installation)
where they explain how to enable the GPUs. The `Makefile` contains how to run the model and everything + the
documentation from Nvidia.

## How to download the models?

1. You have to [search the ollama available models](https://ollama.com/search)
2. You have to execute `ollama pull <model_name>`

You can also add the model in the `Makefile` so you can serve that model in the container directly


## How to ask a prompt to a ollama (deepseek) model via API?

Once the container is running you can interact with the API by doing the following:

```bash
 curl -X POST http://localhost:11434/api/generate -d '{ "model": "deepseek-r1:1.5b", "prompt": "what is the capital of france?", "stream": false }'
```

