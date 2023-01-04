LOGFILE= $(shell date +'%Y%m%d_%H%M%S').log
PATH_HUB_SP:=$(PWD)/modules/hub/sp
PATH_SPOKE_CUSTOM_AS:=$(PWD)/modules/spoke/idp-org-auth-server
PATH_SPOKE_ORG_AS:=$(PWD)/modules/spoke/idp-custom-auth-server

default: help

.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-16s\033[0m %s\n", $$1, $$2}'

.PHONY: dep
dep: ## Validate required dependencies and tooling
	@echo "==> Validate tooling"
	@command -v terraform >/dev/null 2>&1 || { echo >&2 "terraform is required but not installed. Aborting."; exit 1; }
	@command -v docker >/dev/null 2>&1 || { echo >&2 "docker is required but not installed. Aborting."; exit 1; }

.PHONY: build
build: dep ## Build Single
	@echo "==> Building Documentation"
	@echo "==> PATH_HUB_SP $(PATH_HUB_SP)"
	@docker run --rm --volume "$(PATH_HUB_SP):/terraform-docs" quay.io/terraform-docs/terraform-docs:0.16.0 markdown /terraform-docs > $(PATH_HUB_SP)/README.md

.PHONY: build-all
build-all: ## Build All Documentation
	@echo "==> Building All Documentation"
	for dir in $(PATH_HUB_SP) $(PATH_SPOKE_CUSTOM_AS) $(PATH_SPOKE_ORG_AS); do \
		echo "==> PATH $$dir"; \
		docker run --rm --volume "$$dir:/terraform-docs" quay.io/terraform-docs/terraform-docs:0.16.0 markdown /terraform-docs > $$dir/README.md; \
	done

.PHONY: clean
clean: ## Clean up
	@echo "==> Cleaning up terraform state files"
	@rm -rf terraform.tfstate*

.PHONY: check
check: dep ## Check for HCL formatting
	@echo "==> Checking for HCL formatting"
	@terraform validate && terraform fmt