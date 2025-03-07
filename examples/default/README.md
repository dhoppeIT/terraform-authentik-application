# Example

The configuration in this directory creates:

* authentik_application

## Usage

To run this example, you need to execute the following commands:

```shell
terraform init
terraform plan
terraform apply
```

:warning: This example may create resources that cost money. Execute the
command `terraform destroy` when the resources are no longer needed.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_authentik"></a> [authentik](#requirement\_authentik) | ~> 2024.12 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_authentik_application"></a> [authentik\_application](#module\_authentik\_application) | ../../ | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_headers"></a> [headers](#input\_headers) | Optional HTTP headers sent with every request | `map(string)` | `{}` | no |
| <a name="input_insecure"></a> [insecure](#input\_insecure) | Whether to skip TLS verification, can optionally be passed as AUTHENTIK\_INSECURE environmental variable | `bool` | `false` | no |
| <a name="input_token"></a> [token](#input\_token) | The authentik API token, can optionally be passed as AUTHENTIK\_TOKEN environmental variable | `string` | n/a | yes |
| <a name="input_url"></a> [url](#input\_url) | The authentik API endpoint, can optionally be passed as AUTHENTIK\_URL environmental variable | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of this resource |
<!-- END_TF_DOCS -->
