# terraform-authentik-application

Terraform module to manage the following Twingate resources:

* authentik_application

## Usage

Copy and paste the following code snippet to your Terraform configuration,
specify the required variables and run the command `terraform init`.

```hcl
module "authentik_provider_oauth2" {
  source  = "gitlab.com/terraform-child-modules-48151/terraform-authentik-provider-oauth2/local"
  version = "1.0.0"

  name               = "example-provider-oauth2"
  client_id          = "vke8qUguq8J8eCXJOR5UuOWbJfuob1PoGOH9oo0n"
  authorization_flow = "8dd2dda7-5624-4f42-8984-04139ce50236"
  invalidation_flow  = "742a8bb5-3981-44ab-949f-dada3e92daf9"
}

module "authentik_application" {
  source  = "gitlab.com/terraform-child-modules-48151/terraform-authentik-application/local"
  version = "1.0.0"

  name = "example-application"
  slug = "example-application"

  protocol_provider = module.authentik_provider_oauth2.id
}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_authentik"></a> [authentik](#requirement\_authentik) | ~> 2024.12 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_authentik"></a> [authentik](#provider\_authentik) | ~> 2024.12 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [authentik_application.this](https://registry.terraform.io/providers/goauthentik/authentik/latest/docs/resources/application) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_backchannel_providers"></a> [backchannel\_providers](#input\_backchannel\_providers) | The IDs of backchannel providers to augment the functionality of applications | `list(number)` | `[]` | no |
| <a name="input_group"></a> [group](#input\_group) | The group of the application | `string` | `null` | no |
| <a name="input_meta_description"></a> [meta\_description](#input\_meta\_description) | The description of the application | `string` | `null` | no |
| <a name="input_meta_icon"></a> [meta\_icon](#input\_meta\_icon) | The icon of the application | `string` | `null` | no |
| <a name="input_meta_launch_url"></a> [meta\_launch\_url](#input\_meta\_launch\_url) | The launch URL of the application | `string` | `null` | no |
| <a name="input_meta_publisher"></a> [meta\_publisher](#input\_meta\_publisher) | The publisher of the application | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the application | `string` | n/a | yes |
| <a name="input_open_in_new_tab"></a> [open\_in\_new\_tab](#input\_open\_in\_new\_tab) | Whether or not a application should be opened in a new browser tab | `bool` | `false` | no |
| <a name="input_policy_engine_mode"></a> [policy\_engine\_mode](#input\_policy\_engine\_mode) | Whether all or any policies must match to grant access | `string` | `"any"` | no |
| <a name="input_protocol_provider"></a> [protocol\_provider](#input\_protocol\_provider) | The ID of the provider used by the application | `number` | `null` | no |
| <a name="input_slug"></a> [slug](#input\_slug) | Internal application name used in URLs | `string` | n/a | yes |
| <a name="input_uuid"></a> [uuid](#input\_uuid) | The UUID of the application | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of this resource |
<!-- END_TF_DOCS -->

## Authors

Created and maintained by [Dennis Hoppe](https://gitlab.com/dhoppeIT).

## License

Apache 2 licensed. See [LICENSE](LICENSE) for full details.
