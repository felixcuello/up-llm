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
	@echo "   deepseek-coder:1.3b         # DeepSeek Coder is a capable coding model"
	@echo "   deepseek-r1:1.5b            # DeepSeek's first-generation of reasoning models with comparable performance to OpenAI-o1"
	@echo "   deepseek-v3:671b            # A strong Mixture-of-Experts (MoE) language model"
	@echo ""
	@echo " INVOCATION"
	@echo ""
	@echo " make MODEL=<model> run_model      # (e.g. make MODEL=deepseek-coder:1.3b run_model)"
	@echo " make MODEL=<model> serve_model    # (e.g. make MODEL=deepseek-coder:1.3b serve_model)"
	@echo ""

IMAGE_NAME := up_ollama
DOCKERCMD := docker
UNIVERSITYLABUSER := labp8115

# The laboratory@university requires to use 'sudo' when running docker otherwise it throws a permission exception
# --------------------------------------------------------------------------------------------------------------------
ifeq ($(USER),$(UNIVERSITYLABUSER)) # User from the UP laboratory
DOCKERCMD := sudo docker
endif

build:
	$(DOCKERCMD) build -t $(IMAGE_NAME) .

build-nc:
	@$(DOCKERCMD) build --no-cache -t $(IMAGE_NAME) .

down:
	@$(DOCKERCMD) compose down

shell:
	@$(DOCKERCMD) compose run --rm --service-ports --entrypoint /bin/bash -ti $(IMAGE_NAME) 

run_model:
	@$(DOCKERCMD) compose run --entrypoint /app/run_model.sh --rm --env MODEL=$(MODEL) --service-ports -ti $(IMAGE_NAME)

serve_model:
	@$(DOCKERCMD) compose run --rm --env MODEL=$(MODEL) --service-ports $(IMAGE_NAME) ./serve_model.sh
