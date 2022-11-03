resource "okta_idp_oidc" "spoke_idp" {
  account_link_action   = "AUTO"
  authorization_binding = "HTTP-REDIRECT"
  authorization_url     = var.hub_idp_oidc_authorization_url
  client_id             = var.hub_idp_client_id
  client_secret         = var.hub_idp_client_secret
  deprovisioned_action  = "NONE"
  groups_action         = "NONE"
  issuer_mode           = "DYNAMIC"
  issuer_url            = var.hub_idp_oidc_issue_url
  jwks_binding          = "HTTP-REDIRECT"
  jwks_url              = var.hub_idp_oidc_jwks_url
  max_clock_skew        = "0"
  name                  = var.hub_idp_name
  profile_master        = "true"
  provisioning_action   = "AUTO"
  scopes                = ["email", "openid", "profile"]
  subject_match_type    = "USERNAME"
  suspended_action      = "NONE"
  token_binding         = "HTTP-POST"
  token_url             = var.hub_idp_oidc_token_url
  user_info_binding     = "HTTP-REDIRECT"
  user_info_url         = var.hub_idp_oidc_user_info_url
  username_template     = "idpuser.email"
}
