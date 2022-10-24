output "spa_application_id" {
  value = okta_app_oauth.spa_application.id
}

output "spa_application_client_id" {
  value = okta_app_oauth.spa_application.client_id
}

output "spa_application_issuer" {
  value = data.okta_auth_server.authorization_server.issuer
}

output "spoke_idp_id" {
  value = okta_idp_oidc.spoke_idp.id
}
