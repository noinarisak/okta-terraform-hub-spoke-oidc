# SPA SP Details
# Use the output values to fill in the following fields in the React Sample `testenv` file that is located in this repo
# at react-app folder.

output "hub_spa_applications_id" {
  value = module.hub.spa_application_id
}

output "hub_spa_applications_client_id" {
  value = module.hub.spa_application_client_id
}

output "hub_spa_applications_issuer" {
  value = module.hub.spa_application_issuer
}

# ODIC IDP Details
output "spoke_web_application_id" {
  value = module.spoke.web_application_id
}

output "spoke_web_application_client_id" {
  value = module.spoke.web_application_client_id
}

output "spoke_web_application_client_secret" {
  sensitive = true
  value     = module.spoke.web_application_client_secret
}

output "spoke_authorization_server_issuer_url" {
  value = module.spoke.authorization_server_default_issuer_url
}

output "spoke_authorization_server_authorize_url" {
  value = module.spoke.authorization_server_default_authorize_url
}

output "spoke_authorization_server_jwks_url" {
  value = module.spoke.authorization_server_default_jwks_url
}

output "spoke_authorization_server_token_url" {
  value = module.spoke.authorization_server_default_token_url
}

output "spoke_authorization_server_user_info_url" {
  value = module.spoke.authorization_server_default_user_info_url
}