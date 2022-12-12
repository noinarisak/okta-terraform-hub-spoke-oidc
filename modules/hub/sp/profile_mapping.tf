data "okta_user_profile_mapping_source" "user" {}

# NOTE: global = user object and appuser = app user object.
# NOTE: If using Okta 'default' auth server, you must create a mapping to firstName, lastName, and email.

resource "okta_profile_mapping" "idp_global" {
  source_id = okta_idp_oidc.spoke_idp.id
  target_id = data.okta_user_profile_mapping_source.user.id

  mappings {
    id          = okta_app_user_schema_property.idp_favorite_color.index
    expression  = "appuser.favoriteColor == null ? \"None\" : appuser.favoriteColor"
    push_status = "PUSH"
  }

  mappings {
    id          = okta_app_user_schema_property.idp_subscription_level.index
    expression  = "appuser.subscriptionLevel == null ? \"None\" : appuser.subscriptionLevel"
    push_status = "PUSH"
  }

  mappings {
    id          = okta_app_user_schema_property.idp_favorite_music.index
    expression  = "appuser.favoriteMusic == null ? \"None\" : appuser.favoriteMusic"
    push_status = "PUSH"
  }

  depends_on = [
    time_sleep.wait_30_seconds
  ]
}

resource "okta_profile_mapping" "global_appuser" {
  source_id = data.okta_user_profile_mapping_source.user.id
  target_id = okta_app_oauth.spa_application.id

  mappings {
    id          = okta_app_user_schema_property.app_favorite_color.index
    expression  = "user.favoriteColor == null ? \"None\" : user.favoriteColor"
    push_status = "PUSH"
  }

  mappings {
    id          = okta_app_user_schema_property.app_subscription_level.index
    expression  = "user.subscriptionLevel == null ? \"None\" : user.subscriptionLevel"
    push_status = "PUSH"
  }

  mappings {
    id          = okta_app_user_schema_property.app_favorite_music.index
    expression  = "user.favoriteMusic == null ? \"None\" : user.favoriteMusic"
    push_status = "PUSH"
  }

  depends_on = [
    time_sleep.wait_30_seconds
  ]
}