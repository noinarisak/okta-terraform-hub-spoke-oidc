resource "okta_app_user_schema_property" "favortie_color" {
  app_id      = okta_app_oauth.web_application.id
  index       = "favoriteColor"
  title       = "favoriteColor"
  type        = "string"
  description = "User Favorite Color"
  permissions = "READ_WRITE"
  scope       = "SELF"

  depends_on = [
    okta_app_user_schema_property.subscription_level
  ]
}

resource "okta_app_user_schema_property" "subscription_level" {
  app_id = okta_app_oauth.web_application.id
  index  = "subscriptionLevel"
  title  = "subscriptionLevel"
  type   = "string"
  enum   = ["Starter", "Pro", "Enterprise"]
  one_of {
    title = "Starter"
    const = "Starter"
  }
  one_of {
    title = "Pro"
    const = "Pro"
  }
  one_of {
    title = "Enterprise"
    const = "Enterprise"
  }
  description = "User subcription level: Starter, Pro, Enterprise"
  permissions = "READ_WRITE"
  scope       = "SELF"
}