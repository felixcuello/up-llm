all:
	@echo ""
	@echo " -------------------------------------------------------------"
	@echo "  UNIVERSIDAD DE PALERMO | IA"
	@echo " -------------------------------------------------------------"
	@echo ""
	@echo "  💡 Help 💡"
	@echo ""
	@echo " 🐳 Install Nvidia Container Toolkit 🐳 "
	@echo ""
	@echo " -> https://hub.docker.com/r/ollama/ollama"
	@echo " -> https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/latest/install-guide.html#installation"
	@echo ""
	@echo " make build                        # Build container"
	@echo " make build-nc                     # Build container without cache"
	@echo " make down                         # Stop containers"
	@echo " make shell                        # Access container shell"
	@echo ""
	@echo " 🚀 check models in https://ollama.com/search 🚀 "
	@echo ""
	@echo " 🦙 OLLAMA 🦙 - You can run the model (💻 INTERACTIVE) or serve the model (🚀 SERVER via API)"
	@echo " model list:"
	@echo "   run_deepseek-coder:1.3b         # DeepSeek Coder is a capable coding model"
	@echo "   run_deepseek-r1:1.5b            # DeepSeek's first-generation of reasoning models with comparable performance to OpenAI-o1"
	@echo "   run_deepseek-v3:671b            # A strong Mixture-of-Experts (MoE) language model"
	@echo ""
	@echo " INVOCATION"
	@echo ""
	@echo " make MODEL=<model> run_model      # (e.g. make MODEL=deepseek-coder:1.3b run_model)"
	@echo " make MODEL=<model> serve_model    # (e.g. make MODEL=deepseek-coder:1.3b serve_model)"
	@echo ""

IMAGE_NAME:=ollama

build:
	@docker build -t $(IMAGE_NAME) .

build-nc:
	@docker build --no-cache -t $(IMAGE_NAME) .

down:
	@docker compose down

shell:
	@docker compose run --rm --service-ports -it $(IMAGE_NAME) /bin/bash

run_model:
	@docker compose run --rm --env MODEL=$(MODEL) --service-ports $(IMAGE_NAME) ./run_model.sh

serve_model:
	@docker compose run --rm --env MODEL=$(MODEL) --service-ports $(IMAGE_NAME) ./serve_model.sh
