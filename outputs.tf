# SPA SP Details
# Use the output values to fill in the following fields in the React Sample `testenv` file that is located in this repo
# at react-app folder.

output "spa_applications_id" {
  value = module.hub.spa_application_id
}

output "spa_applications_client_id" {
  value = module.hub.spa_application_client_id
}

output "spa_applications_issuer" {
  value = module.hub.spa_application_issuer
}

# ODIC IDP Details
output "web_application_id" {
  value = module.spoke.web_application_id
}

output "web_application_client_id" {
  value = module.spoke.web_application_client_id
}

output "web_application_client_secret" {
  sensitive = true
  value     = module.spoke.web_application_client_secret
}
