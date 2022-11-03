data "okta_user_profile_mapping_source" "user" {}

#  NOTE: global = user object and appuser = app user object.
resource "okta_profile_mapping" "idp_global" {
  source_id = okta_idp_oidc.spoke_idp.id
  target_id = data.okta_user_profile_mapping_source.user.id

  mappings {
    id          = "favoriteColor"
    expression  = "appuser.favoriteColor == null ? \"None\" : appuser.favoriteColor"
    push_status = "PUSH"
  }

  mappings {
    id          = "subscriptionLevel"
    expression  = "appuser.subscriptionLevel == null ? \"None\" : appuser.subscriptionLevel"
    push_status = "PUSH"
  }

  depends_on = [
    okta_user_schema_property.favortie_color,
    okta_user_schema_property.subscription_level
  ]
}

resource "okta_profile_mapping" "global_appuser" {
  source_id = data.okta_user_profile_mapping_source.user.id
  target_id = okta_app_oauth.spa_application.id

  mappings {
    id          = "favoriteColor"
    expression  = "user.favoriteColor == null ? \"None\" : user.favoriteColor"
    push_status = "PUSH"
  }

  mappings {
    id          = "subscriptionLevel"
    expression  = "user.subscriptionLevel == null ? \"None\" : user.subscriptionLevel"
    push_status = "PUSH"
  }

  depends_on = [
    okta_app_user_schema_property.app_favortie_color,
    okta_app_user_schema_property.app_subscription_level
  ]
}