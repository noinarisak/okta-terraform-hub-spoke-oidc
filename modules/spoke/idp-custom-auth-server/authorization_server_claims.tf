# Assume you having Okta CIS tenant with named 'default' authorization server.
data "okta_auth_server" "auth_server_default" {
  name = "default"
}

resource "okta_auth_server_claim" "subscription_level" {
  auth_server_id = data.okta_auth_server.auth_server_default.id
  name           = "subscriptionLevel"
  value          = "(appuser != null) ? appuser.subscriptionLevel : \"None\""
  claim_type     = "IDENTITY"
}

resource "okta_auth_server_claim" "favorite_color" {
  auth_server_id = data.okta_auth_server.auth_server_default.id
  name           = "favoriteColor"
  value          = "(appuser != null) ? appuser.favoriteColor : \"None\""
  claim_type     = "IDENTITY"
}

resource "okta_auth_server_claim" "favorite_music" {
  auth_server_id = data.okta_auth_server.auth_server_default.id
  name           = "favoriteMusic"
  value          = "(user.favoriteMusic != null) ? user.favoriteMusic : \"None\""
  claim_type     = "IDENTITY"
}