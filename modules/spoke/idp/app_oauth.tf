resource "okta_app_oauth" "web_application" {
  auto_key_rotation          = "true"
  auto_submit_toolbar        = "false"
  consent_method             = "REQUIRED"
  grant_types                = ["authorization_code", "client_credentials"]
  hide_ios                   = "true"
  hide_web                   = "true"
  issuer_mode                = "DYNAMIC"
  label                      = var.spoke_oidc_app_name
  login_mode                 = "DISABLED"
  post_logout_redirect_uris  = ["http://localhost:8080"]
  redirect_uris              = var.spoke_web_redirect_uris
  response_types             = ["code"]
  status                     = "ACTIVE"
  token_endpoint_auth_method = "client_secret_basic"
  type                       = "web"
}
