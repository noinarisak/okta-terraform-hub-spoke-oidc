variable "hub_org_name" {
  type = string
}

variable "hub_base_url" {
  type = string
}

variable "hub_api_token" {
  type = string
}

variable "hub_spa_app_label" {
  type = string
}

variable "hub_idp_name" {
  type = string
}

variable "hub_idp_client_id" {
  type = string
}
variable "hub_idp_client_secret" {
  type      = string
  sensitive = false
}

variable "hub_idp_discovery_rule_name" {
  type = string
}

variable "hub_idp_oidc_authorization_url" {
  type = string
}

variable "hub_idp_oidc_issue_url" {
  type = string
}

variable "hub_idp_oidc_jwks_url" {
  type = string
}

variable "hub_idp_oidc_token_url" {
  type = string
}

variable "hub_idp_oidc_user_info_url" {
  type = string
}
