variable "spoke_org_name" {
  type = string
}

variable "spoke_base_url" {
  type = string
}

variable "spoke_api_token" {
  type = string
}

variable "spoke_oidc_app_name" {
  type = string
}

variable "spoke_web_redirect_uris" {
  type = list(string)
}