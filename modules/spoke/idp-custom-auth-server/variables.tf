variable "spoke_org_name" {
  type        = string
  description = "Name of the Okta org."
}

variable "spoke_base_url" {
  type        = string
  description = "Value of the Okta base url. i.e. https://dev-123456.okta.com"
}

variable "spoke_api_token" {
  type        = string
  description = "Value of the api_token property of the OIDC app."
}

variable "spoke_oidc_app_name" {
  type        = string
  description = "Value of the name property of the OIDC app."
  default     = "Spoke OIDC App TF"
}

variable "spoke_web_redirect_uris" {
  type        = list(string)
  description = "List of redirect_uris property of the OIDC app."
}
