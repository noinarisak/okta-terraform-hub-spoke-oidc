resource "okta_app_group_assignment" "spa_to_everyone_group" {
  app_id   = okta_app_oauth.spa_application.id
  group_id = data.okta_group.everyone.id
}