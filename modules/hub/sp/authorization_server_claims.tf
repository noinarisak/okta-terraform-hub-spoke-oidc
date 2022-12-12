# Assume you having Okta CIS tenant with named 'default' authorization server.
data "okta_auth_server" "auth_server_default" {
  name = "default"
}

resource "okta_auth_server_claim" "subscription_level" {
  auth_server_id = data.okta_auth_server.auth_server_default.id
  name           = okta_app_user_schema_property.idp_subscription_level.index
  value          = format("(appuser != null) ? appuser.%s : \"None\"", okta_app_user_schema_property.idp_subscription_level.index)
  claim_type     = "IDENTITY"
}

resource "okta_auth_server_claim" "favorite_color" {
  auth_server_id = data.okta_auth_server.auth_server_default.id
  name           = okta_app_user_schema_property.idp_favorite_color.index
  value          = format("(appuser != null) ? appuser.%s : \"None\"", okta_app_user_schema_property.idp_favorite_color.index)
  claim_type     = "IDENTITY"
}

resource "okta_auth_server_claim" "favorite_music" {
  auth_server_id = data.okta_auth_server.auth_server_default.id
  name           = okta_app_user_schema_property.idp_favorite_music.index
  value          = format("(appuser != null) ? appuser.%s : \"None\"", okta_app_user_schema_property.idp_favorite_music.index)
  claim_type     = "IDENTITY"
}