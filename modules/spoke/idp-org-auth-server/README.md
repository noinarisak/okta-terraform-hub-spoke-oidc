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
| [okta_app_group_assignment.web_to_everyone_group](https://registry.terraform.io/providers/okta/okta/3.37.0/docs/resources/app_group_assignment) | resource |
| [okta_app_oauth.web_application](https://registry.terraform.io/providers/okta/okta/3.37.0/docs/resources/app_oauth) | resource |
| [okta_app_user_schema_property.favorite_color](https://registry.terraform.io/providers/okta/okta/3.37.0/docs/resources/app_user_schema_property) | resource |
| [okta_app_user_schema_property.subscription_level](https://registry.terraform.io/providers/okta/okta/3.37.0/docs/resources/app_user_schema_property) | resource |
| [okta_user_schema_property.favorite_music](https://registry.terraform.io/providers/okta/okta/3.37.0/docs/resources/user_schema_property) | resource |
| [okta_group.everyone](https://registry.terraform.io/providers/okta/okta/3.37.0/docs/data-sources/group) | data source |
| [okta_policy.password_only](https://registry.terraform.io/providers/okta/okta/3.37.0/docs/data-sources/policy) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_spoke_api_token"></a> [spoke\_api\_token](#input\_spoke\_api\_token) | Value of the api\_token property of the OIDC app. | `string` | n/a | yes |
| <a name="input_spoke_base_url"></a> [spoke\_base\_url](#input\_spoke\_base\_url) | Value of the Okta base url. i.e. https://dev-123456.okta.com | `string` | n/a | yes |
| <a name="input_spoke_oidc_app_name"></a> [spoke\_oidc\_app\_name](#input\_spoke\_oidc\_app\_name) | Value of the name property of the OIDC app. | `string` | `"Spoke OIDC App TF"` | no |
| <a name="input_spoke_org_name"></a> [spoke\_org\_name](#input\_spoke\_org\_name) | Name of the Okta org. | `string` | n/a | yes |
| <a name="input_spoke_web_redirect_uris"></a> [spoke\_web\_redirect\_uris](#input\_spoke\_web\_redirect\_uris) | List of redirect\_uris property of the OIDC app. | `list(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_authorization_server_default_authorize_url"></a> [authorization\_server\_default\_authorize\_url](#output\_authorization\_server\_default\_authorize\_url) | n/a |
| <a name="output_authorization_server_default_issuer_url"></a> [authorization\_server\_default\_issuer\_url](#output\_authorization\_server\_default\_issuer\_url) | n/a |
| <a name="output_authorization_server_default_jwks_url"></a> [authorization\_server\_default\_jwks\_url](#output\_authorization\_server\_default\_jwks\_url) | n/a |
| <a name="output_authorization_server_default_token_url"></a> [authorization\_server\_default\_token\_url](#output\_authorization\_server\_default\_token\_url) | n/a |
| <a name="output_authorization_server_default_user_info_url"></a> [authorization\_server\_default\_user\_info\_url](#output\_authorization\_server\_default\_user\_info\_url) | n/a |
| <a name="output_web_application_client_id"></a> [web\_application\_client\_id](#output\_web\_application\_client\_id) | n/a |
| <a name="output_web_application_client_secret"></a> [web\_application\_client\_secret](#output\_web\_application\_client\_secret) | n/a |
| <a name="output_web_application_id"></a> [web\_application\_id](#output\_web\_application\_id) | n/a |
