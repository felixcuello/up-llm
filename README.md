# Universidad de Palermo - LLMs Investigation

Introduction
---------------------------------------------------------------------------------------------------------------------
The idea of this repository is to:

1. Investigate what tools are related to LLMs that could be useful for us
2. Gather links to papers, articles, blog posts, etc. that could be useful for us
3. Create code snippets that could be useful for us
4. Create a list of questions that we have and that we need to answer / TODO list


TODO
---------------------------------------------------------------------------------------------------------------------
- [ ] Get access to the University Cluster
    - [ ] Understand which models can be ran in the cluster (knowing that only some can be ran distributely with Spark
      or with GPUs)
    - [ ] Understand how to use the university cluster
    - [ ] Understand how to train a model in the cluster
        - [ ] Understand how to use GPUs in the cluster
        - [ ] Understand how to use Spark in the cluster

- [ ] Downloading a tiny deepseek model and made it to work locally
    - [X] Create a docker container with Ollama
    - [X] Install Deepseek-r1 in the container
    - [X] Make the container to work automatically
    - [X] Understand how to use Ollama
    - [X] run the model
    - [ ] understand how to work with the model
    - [ ] can we fine tune the model?
    - [ ] check if we can do the same at the university model


TO READ
---------------------------------------------------------------------------------------------------------------------

- [ ] Keep learning / reading about LLMs
    - [ ] "Building LLMs for Production" (book)
        - [X] Chapter i: Introduction
        - [ ] Chapter ii: LLM Architectures Landscape
        - [ ] Chapter iii: LLMs in practice
        - [ ] Chapter iv: Introduction to Prompting
        - [ ] Chapter v: Introduction to LangChain & LLamaindex
        - [ ] Chapter vi: Prompting with LangChain
        - [ ] Chapter vii: Retrieval-Augmented Generation
        - [ ] Chapter viii: Advanced RAG
        - [ ] Chapter ix: Agents
        - [ ] Chapter x: Fine-Tuning
        - [ ] Chapter xi: Deployment


LINKS & RESOURCES
---------------------------------------------------------------------------------------------------------------------
- [DeepSpeed](https://www.deepspeed.ai/)
- [Exo distributed training](https://github.com/exo-explore/exo)
- [ollama](https://ollama.com/)
    - [ollama deepseek](https://ollama.com/library/deepseek-r1)
    - [ollama docker image](https://hub.docker.com/r/ollama/ollama)
    - [ollama Support Distributed
    Inference](https://www.reddit.com/r/LocalLLaMA/comments/1cyzi9e/llamacpp_now_supports_distributed_inference/)


RUNBOOKS & COMMANDS
---------------------------------------------------------------------------------------------------------------------
## ollama 

Ollama can be used to run LLMs models, and we have created a docker image (and its docker-compose file) to run it
locally. It can be executed without any problem in a local machine , but it's important to add some local drivers in
case we want to use GPUs. In the `Makefile` there are some good links in the example.


## How to ask a prompt to a ollama (deepseek) model via API?

```bash
 curl -X POST http://localhost:11434/api/generate -d '{ "model": "deepseek-r1:1.5b", "prompt": "what is the capital of france?", "stream": false }'
```
