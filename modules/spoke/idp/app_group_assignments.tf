resource "okta_app_group_assignment" "web_to_everyone_group" {
  app_id   = okta_app_oauth.web_application.id
  group_id = data.okta_group.everyone.id
}