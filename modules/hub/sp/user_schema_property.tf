resource "okta_user_schema_property" "favorite_color" {
  index       = "favoriteColor"
  title       = "favoriteColor"
  type        = "string"
  description = "User Favorite Color"
  permissions = "READ_WRITE"
  # Chaining prevents API errors, due to how Okta API endpoints are not immediate.
  depends_on = [
    okta_user_schema_property.subscription_level,
  ]
}

resource "okta_user_schema_property" "subscription_level" {
  index       = "subscriptionLevel"
  title       = "subscriptionLevel"
  type        = "string"
  description = "User subcription level: Starter, Pro, Enterprise"
  permissions = "READ_WRITE"
  # Chaining prevents API errors, due to how Okta API endpoints are not immediate.
  depends_on = [
    okta_user_schema_property.favorite_music,
  ]
}

resource "okta_user_schema_property" "favorite_music" {
  index       = "favoriteMusic"
  title       = "favoriteMusic"
  type        = "string"
  description = "User Favorite Music"
  permissions = "READ_WRITE"
}