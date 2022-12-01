# Main
variable "okta_hub_org_name" {
  type = string
}
variable "okta_hub_base_url" {
  type = string
}
variable "okta_hub_api_token" {
  type = string
}
variable "okta_spoke_org_name" {
  type = string
}
variable "okta_spoke_base_url" {
  type = string
}
variable "okta_spoke_api_token" {
  type = string
}

locals {
  hub_root_url              = format("https://%s.%s", var.okta_hub_org_name, var.okta_hub_base_url)
  hub_redirect_uri_callback = format("%s/oauth2/v1/authorize/callback", local.hub_root_url)
}

module "hub" {
  source                         = "./modules/hub/sp"
  hub_org_name                   = var.okta_hub_org_name
  hub_base_url                   = var.okta_hub_base_url
  hub_api_token                  = var.okta_hub_api_token
  hub_spa_app_label              = "React SPA TF"
  hub_idp_name                   = "Spoke IDP TF"
  hub_idp_client_id              = module.spoke.web_application_client_id
  hub_idp_client_secret          = module.spoke.web_application_client_secret
  hub_idp_discovery_rule_name    = "Spoke Idp Rule TF"
  hub_idp_oidc_authorization_url = module.spoke.authorization_server_default_authorize_url
  hub_idp_oidc_issue_url         = module.spoke.authorization_server_default_issuer_url
  hub_idp_oidc_jwks_url          = module.spoke.authorization_server_default_jwks_url
  hub_idp_oidc_token_url         = module.spoke.authorization_server_default_token_url
  hub_idp_oidc_user_info_url     = module.spoke.authorization_server_default_user_info_url
}

module "spoke" {
  source              = "./modules/spoke/idp-custom-auth-server"
  spoke_org_name      = var.okta_spoke_org_name
  spoke_base_url      = var.okta_spoke_base_url
  spoke_api_token     = var.okta_spoke_api_token
  spoke_oidc_app_name = "Spoke IDP TF"
  spoke_web_redirect_uris = [
    local.hub_redirect_uri_callback,
  ]
}

# Eable if you like to configure the with Organization Authorization Server.
# module "spoke" {
#   source              = "./modules/spoke/idp-org-auth-server"
#   spoke_org_name      = var.okta_spoke_org_name
#   spoke_base_url      = var.okta_spoke_base_url
#   spoke_api_token     = var.okta_spoke_api_token
#   spoke_oidc_app_name = "Spoke IDP TF"
#   spoke_web_redirect_uris = [
#     local.hub_redirect_uri_callback,
#   ]
# }

# Create testenv that would be consume by the React Application located in react-app folder.
# NOTE: Performing 'terraform destory' will remove the testenv file, also.
resource "local_file" "react_app_testenv" {
  content = templatefile("${path.module}/react-app-testenv.tftpl",
    { "HUB_OKTA_SPA_CLIENT_ID" = module.hub.spa_application_client_id,
      "HUB_OKTA_ISSUER"        = module.hub.spa_application_issuer
  })
  filename = "${path.module}/react-app/testenv"
}

terraform {
  required_version = "= 1.3.3"
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "= 2.2.3"
    }
  }
}