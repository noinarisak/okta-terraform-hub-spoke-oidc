terraform {
  required_providers {
    okta = {
      source  = "okta/okta"
      version = "= 3.37.0"
    }
  }
}

provider "okta" {
  org_name  = var.hub_org_name
  base_url  = var.hub_base_url
  api_token = var.hub_api_token
}
