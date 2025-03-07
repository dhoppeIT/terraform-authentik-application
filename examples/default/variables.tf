variable "token" {
  type        = string
  sensitive   = true
  description = "The authentik API token, can optionally be passed as AUTHENTIK_TOKEN environmental variable"
}

variable "url" {
  type        = string
  description = "The authentik API endpoint, can optionally be passed as AUTHENTIK_URL environmental variable"
}

variable "headers" {
  type        = map(string)
  sensitive   = true
  default     = {}
  description = "Optional HTTP headers sent with every request"
}

variable "insecure" {
  type        = bool
  default     = false
  description = "Whether to skip TLS verification, can optionally be passed as AUTHENTIK_INSECURE environmental variable"
}
