terraform {
  required_providers {
    okta = {
      source  = "okta/okta"
      version = "= 3.37.0"
    }
  }
}

provider "okta" {
  org_name  = var.spoke_org_name
  base_url  = var.spoke_base_url
  api_token = var.spoke_api_token
}