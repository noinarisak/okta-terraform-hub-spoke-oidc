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
  # /todo: Delete the following line:
  # redirect_uris              = ["http://localhost:8080/authorization-code/callback", "http://localhost:8080/login/callback", "https://narisaklabs-hub.oktapreview.com/oauth2/v1/authorize/callback"]
  redirect_uris              = ["https://narisaklabs-hub.oktapreview.com/oauth2/v1/authorize/callback"]
  response_types             = ["code"]
  status                     = "ACTIVE"
  token_endpoint_auth_method = "client_secret_basic"
  type                       = "web"
}
