module "authentik_application" {
  source = "../../"

  name = "example-application"
  slug = "example-application"

  protocol_provider = 1
}
