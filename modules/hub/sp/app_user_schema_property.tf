#  Application
resource "okta_app_user_schema_property" "app_favorite_color" {
  app_id      = okta_app_oauth.spa_application.id
  index       = "favoriteColor"
  title       = "favoriteColor"
  type        = "string"
  description = "User Favorite Color"
  permissions = "READ_WRITE"
  scope       = "SELF"
  # Chaining prevents API errors, due to how Okta API endpoints are not immediate.
  depends_on = [
    okta_app_user_schema_property.app_subscription_level
  ]
}

resource "okta_app_user_schema_property" "app_subscription_level" {
  app_id      = okta_app_oauth.spa_application.id
  index       = "subscriptionLevel"
  title       = "subscriptionLevel"
  type        = "string"
  description = "User subcription level: Starter, Pro, Enterprise"
  permissions = "READ_WRITE"
  scope       = "SELF"
  # Chaining prevents API errors, due to how Okta API endpoints are not immediate.
  depends_on = [
    okta_app_user_schema_property.app_favorite_music
  ]
}

resource "okta_app_user_schema_property" "app_favorite_music" {
  app_id      = okta_app_oauth.spa_application.id
  index       = "favoriteMusic"
  title       = "favoriteMusic"
  type        = "string"
  description = "User Favorite Music"
  permissions = "READ_WRITE"
  scope       = "SELF"
}

# OIDC IDP
resource "okta_app_user_schema_property" "idp_favorite_color" {
  app_id        = okta_idp_oidc.spoke_idp.id
  index         = "favoriteColor"
  title         = "favoriteColor"
  type          = "string"
  description   = "User Favorite Color"
  permissions   = "READ_WRITE"
  scope         = "SELF"
  external_name = "favoriteColor"
  # Chaining prevents API errors, due to how Okta API endpoints are not immediate.
  depends_on = [
    okta_app_user_schema_property.idp_subscription_level
  ]
}

resource "okta_app_user_schema_property" "idp_subscription_level" {
  app_id        = okta_idp_oidc.spoke_idp.id
  index         = "subscriptionLevel"
  title         = "subscriptionLevel"
  type          = "string"
  description   = "User subcription level: Starter, Pro, Enterprise"
  permissions   = "READ_WRITE"
  scope         = "SELF"
  external_name = "subscriptionLevel"
  # Chaining prevents API errors, due to how Okta API endpoints are not immediate.
  depends_on = [
    okta_app_user_schema_property.idp_favorite_music
  ]
}

resource "okta_app_user_schema_property" "idp_favorite_music" {
  app_id        = okta_idp_oidc.spoke_idp.id
  index         = "favoriteMusic"
  title         = "favoriteMusic"
  type          = "string"
  description   = "User Favorite Music"
  permissions   = "READ_WRITE"
  scope         = "SELF"
  external_name = "favoriteMusic"

}