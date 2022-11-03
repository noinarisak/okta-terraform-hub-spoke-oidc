resource "okta_user_schema_property" "favortie_color" {
  index       = "favoriteColor"
  title       = "favoriteColor"
  type        = "string"
  description = "User Favorite Color"
  permissions = "READ_WRITE"
}

resource "okta_user_schema_property" "subscription_level" {
  index       = "subscriptionLevel"
  title       = "subscriptionLevel"
  type        = "string"
  description = "User subcription level: Starter, Pro, Enterprise"
  permissions = "READ_WRITE"
}