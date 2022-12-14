data "okta_auth_server" "authorization_server" {
  name = "default"
}

data "okta_policy" "password_only" {
  name = "Password only"
  type = "ACCESS_POLICY"
}

resource "okta_app_oauth" "spa_application" {
  auto_key_rotation          = "true"
  auto_submit_toolbar        = "false"
  consent_method             = "REQUIRED"
  grant_types                = ["authorization_code"]
  hide_ios                   = "true"
  hide_web                   = "true"
  issuer_mode                = "DYNAMIC"
  label                      = var.hub_spa_app_label
  login_mode                 = "DISABLED"
  pkce_required              = "true"
  post_logout_redirect_uris  = ["http://localhost:8080"]
  redirect_uris              = ["http://localhost:8080/login/callback"]
  response_types             = ["code"]
  status                     = "ACTIVE"
  token_endpoint_auth_method = "none"
  type                       = "browser"
  authentication_policy      = data.okta_policy.password_only.id
}
