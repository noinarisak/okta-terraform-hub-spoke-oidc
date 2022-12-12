variable "hub_org_name" {
  type        = string
  description = "Name of the Okta org."
}

variable "hub_base_url" {
  type        = string
  description = "Value of the Okta base url. i.e. https://dev-123456.okta.com"
}

variable "hub_api_token" {
  type        = string
  description = "Value of the api_token property of the OIDC app."
}

variable "hub_spa_app_label" {
  type        = string
  description = "Value of the label property of the SPA app."
}

variable "hub_idp_name" {
  type        = string
  description = "Value of OAUTH 2.0 Idp name."
}

variable "hub_idp_client_id" {
  type        = string
  description = "Value of OAUTH 2.0 client ID."
}
variable "hub_idp_client_secret" {
  type        = string
  sensitive   = false
  description = "value of OAUTH 2.0 client secret."
}

variable "hub_idp_discovery_rule_name" {
  type        = string
  description = "Value of OAUTH 2.0 Idp discovery rule name."
}

variable "hub_idp_oidc_authorization_url" {
  type        = string
  description = "Value of OAUTH 2.0 Idp authorization url."
}

variable "hub_idp_oidc_issue_url" {
  type        = string
  description = "Value of OAUTH 2.0 Idp issue url."
}

variable "hub_idp_oidc_jwks_url" {
  type        = string
  description = "Value of OAUTH 2.0 Idp jwks url."
}

variable "hub_idp_oidc_token_url" {
  type        = string
  description = "Value of OAUTH 2.0 Idp token url."
}

variable "hub_idp_oidc_user_info_url" {
  type        = string
  description = "Value of OAUTH 2.0 Idp user info url."
}
