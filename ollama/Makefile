all:
	@echo ""
	@echo " -------------------------------------------------------------"
	@echo "  Help 💡"
	@echo " -------------------------------------------------------------"
	@echo ""
	@echo " Install Nvidia Container Toolkit 🐳"
	@echo ""
	@echo " -> https://hub.docker.com/r/ollama/ollama"
	@echo " -> https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/latest/install-guide.html#installation"
	@echo ""
	@echo " make build                       - Build container"
	@echo " make build-nc                    - Build container without cache"
	@echo " make shell                       - Access container shell"
	@echo " make run                         - Run the container"
	@echo ""

IMAGE_NAME:=ollama

build:
	@docker build -t $(IMAGE_NAME) .

build-nc:
	@docker build --no-cache -t $(IMAGE_NAME) .

shell:
	@docker compose run --rm --entrypoint /bin/bash --service-ports -it $(IMAGE_NAME)

run:
	@docker compose run --rm --service-ports $(IMAGE_NAME)
