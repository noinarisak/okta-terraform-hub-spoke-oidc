LOGFILE= $(shell date +'%Y%m%d_%H%M%S').log
PATH_HUB_SP:=$(PWD)/modules/hub/sp
PATH_SPOKE_CUSTOM_AS:=$(PWD)/modules/spoke/idp-org-auth-server
PATH_SPOKE_ORG_AS:=$(PWD)/modules/spoke/idp-custom-auth-server

default: build-all

.PHONY: dep
dep: # Download required dependencies
	@echo "==> Validate tooling"

.PHONY: build
build: dep # Build Single
	@echo "==> Building Documentation"
	@echo "==> PATH_HUB_SP $(PATH_HUB_SP)"
	@docker run --rm --volume "$(PATH_HUB_SP):/terraform-docs" quay.io/terraform-docs/terraform-docs:0.16.0 markdown /terraform-docs > $(PATH_HUB_SP)/README.md

.PHONY: build-all
build-all: # Build All
	@echo "==> Building All Documentation"
	for dir in $(PATH_HUB_SP) $(PATH_SPOKE_CUSTOM_AS) $(PATH_SPOKE_ORG_AS); do \
		echo "==> PATH $$dir"; \
		docker run --rm --volume "$$dir:/terraform-docs" quay.io/terraform-docs/terraform-docs:0.16.0 markdown /terraform-docs > $$dir/README.md; \
	done

.PHONY: clean
clean: # Clean up
	@echo "==> Cleaning up terraform state files"
	@rm -rf terraform.tfstate*

.PHONY: check
check: # Check for HCL formatting
	@echo "==> Checking for HCL formatting"
	@terraform validate && terraform fmt