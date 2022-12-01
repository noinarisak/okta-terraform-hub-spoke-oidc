## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_okta"></a> [okta](#requirement\_okta) | = 3.37.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_okta"></a> [okta](#provider\_okta) | = 3.37.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [okta_app_group_assignment.spa_to_everyone_group](https://registry.terraform.io/providers/okta/okta/3.37.0/docs/resources/app_group_assignment) | resource |
| [okta_app_oauth.spa_application](https://registry.terraform.io/providers/okta/okta/3.37.0/docs/resources/app_oauth) | resource |
| [okta_app_user_schema_property.app_favortie_color](https://registry.terraform.io/providers/okta/okta/3.37.0/docs/resources/app_user_schema_property) | resource |
| [okta_app_user_schema_property.app_subscription_level](https://registry.terraform.io/providers/okta/okta/3.37.0/docs/resources/app_user_schema_property) | resource |
| [okta_app_user_schema_property.idp_favortie_color](https://registry.terraform.io/providers/okta/okta/3.37.0/docs/resources/app_user_schema_property) | resource |
| [okta_app_user_schema_property.idp_subscription_level](https://registry.terraform.io/providers/okta/okta/3.37.0/docs/resources/app_user_schema_property) | resource |
| [okta_auth_server_claim.favorite_color](https://registry.terraform.io/providers/okta/okta/3.37.0/docs/resources/auth_server_claim) | resource |
| [okta_auth_server_claim.subcription_level](https://registry.terraform.io/providers/okta/okta/3.37.0/docs/resources/auth_server_claim) | resource |
| [okta_idp_oidc.spoke_idp](https://registry.terraform.io/providers/okta/okta/3.37.0/docs/resources/idp_oidc) | resource |
| [okta_policy_rule_idp_discovery.spoke_idp_rule](https://registry.terraform.io/providers/okta/okta/3.37.0/docs/resources/policy_rule_idp_discovery) | resource |
| [okta_profile_mapping.global_appuser](https://registry.terraform.io/providers/okta/okta/3.37.0/docs/resources/profile_mapping) | resource |
| [okta_profile_mapping.idp_global](https://registry.terraform.io/providers/okta/okta/3.37.0/docs/resources/profile_mapping) | resource |
| [okta_user_schema_property.favortie_color](https://registry.terraform.io/providers/okta/okta/3.37.0/docs/resources/user_schema_property) | resource |
| [okta_user_schema_property.subscription_level](https://registry.terraform.io/providers/okta/okta/3.37.0/docs/resources/user_schema_property) | resource |
| [okta_auth_server.auth_server_default](https://registry.terraform.io/providers/okta/okta/3.37.0/docs/data-sources/auth_server) | data source |
| [okta_auth_server.authorization_server](https://registry.terraform.io/providers/okta/okta/3.37.0/docs/data-sources/auth_server) | data source |
| [okta_group.everyone](https://registry.terraform.io/providers/okta/okta/3.37.0/docs/data-sources/group) | data source |
| [okta_policy.idp_discovery_policy](https://registry.terraform.io/providers/okta/okta/3.37.0/docs/data-sources/policy) | data source |
| [okta_policy.password_only](https://registry.terraform.io/providers/okta/okta/3.37.0/docs/data-sources/policy) | data source |
| [okta_user_profile_mapping_source.user](https://registry.terraform.io/providers/okta/okta/3.37.0/docs/data-sources/user_profile_mapping_source) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_hub_api_token"></a> [hub\_api\_token](#input\_hub\_api\_token) | n/a | `string` | n/a | yes |
| <a name="input_hub_base_url"></a> [hub\_base\_url](#input\_hub\_base\_url) | n/a | `string` | n/a | yes |
| <a name="input_hub_idp_client_id"></a> [hub\_idp\_client\_id](#input\_hub\_idp\_client\_id) | n/a | `string` | n/a | yes |
| <a name="input_hub_idp_client_secret"></a> [hub\_idp\_client\_secret](#input\_hub\_idp\_client\_secret) | n/a | `string` | n/a | yes |
| <a name="input_hub_idp_discovery_rule_name"></a> [hub\_idp\_discovery\_rule\_name](#input\_hub\_idp\_discovery\_rule\_name) | n/a | `string` | n/a | yes |
| <a name="input_hub_idp_name"></a> [hub\_idp\_name](#input\_hub\_idp\_name) | n/a | `string` | n/a | yes |
| <a name="input_hub_idp_oidc_authorization_url"></a> [hub\_idp\_oidc\_authorization\_url](#input\_hub\_idp\_oidc\_authorization\_url) | n/a | `string` | n/a | yes |
| <a name="input_hub_idp_oidc_issue_url"></a> [hub\_idp\_oidc\_issue\_url](#input\_hub\_idp\_oidc\_issue\_url) | n/a | `string` | n/a | yes |
| <a name="input_hub_idp_oidc_jwks_url"></a> [hub\_idp\_oidc\_jwks\_url](#input\_hub\_idp\_oidc\_jwks\_url) | n/a | `string` | n/a | yes |
| <a name="input_hub_idp_oidc_token_url"></a> [hub\_idp\_oidc\_token\_url](#input\_hub\_idp\_oidc\_token\_url) | n/a | `string` | n/a | yes |
| <a name="input_hub_idp_oidc_user_info_url"></a> [hub\_idp\_oidc\_user\_info\_url](#input\_hub\_idp\_oidc\_user\_info\_url) | n/a | `string` | n/a | yes |
| <a name="input_hub_org_name"></a> [hub\_org\_name](#input\_hub\_org\_name) | n/a | `string` | n/a | yes |
| <a name="input_hub_spa_app_label"></a> [hub\_spa\_app\_label](#input\_hub\_spa\_app\_label) | n/a | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_spa_application_client_id"></a> [spa\_application\_client\_id](#output\_spa\_application\_client\_id) | n/a |
| <a name="output_spa_application_id"></a> [spa\_application\_id](#output\_spa\_application\_id) | n/a |
| <a name="output_spa_application_issuer"></a> [spa\_application\_issuer](#output\_spa\_application\_issuer) | n/a |
| <a name="output_spoke_idp_id"></a> [spoke\_idp\_id](#output\_spoke\_idp\_id) | n/a |
