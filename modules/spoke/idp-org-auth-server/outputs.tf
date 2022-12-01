output "web_application_id" {
  value = okta_app_oauth.web_application.id
}

output "web_application_client_id" {
  value = okta_app_oauth.web_application.client_id
}

output "web_application_client_secret" {
  value = okta_app_oauth.web_application.client_secret
}

output "authorization_server_default_issuer_url" {
  value = data.okta_auth_server.auth_server_default.issuer
}

output "authorization_server_default_authorize_url" {
  value = format("%s/oauth2/v1/authorize", local.spoke_root_url)
}

output "authorization_server_default_jwks_url" {
  value = format("%s/oauth2/v1/keys", local.spoke_root_url)
}

output "authorization_server_default_token_url" {
  value = format("%s/oauth2/v1/token", local.spoke_root_url)
}

output "authorization_server_default_user_info_url" {
  value = format("%s/oauth2/v1/userinfo", local.spoke_root_url)
}