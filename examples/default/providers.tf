provider "authentik" {
  url   = var.url
  token = var.token

  insecure = var.insecure
  headers  = var.headers
}
