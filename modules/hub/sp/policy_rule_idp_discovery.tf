// All Okta orgs contain only one IdP Discovery Policy
data "okta_policy" "idp_discovery_policy" {
  name = "Idp Discovery Policy"
  type = "IDP_DISCOVERY"
}

resource "okta_policy_rule_idp_discovery" "spoke_idp_rule" {
  policy_id          = data.okta_policy.idp_discovery_policy.id
  name               = "Spoke Idp TF"
  idp_id             = okta_idp_oidc.spoke_idp.id
  idp_type           = "OIDC"
  network_connection = "ANYWHERE"
  priority           = 1
  status             = "ACTIVE"

  app_include {
    id   = okta_app_oauth.spa_application.id
    type = "APP"
  }
}