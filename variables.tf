variable "name" {
  type        = string
  description = "Name of the application"
}

variable "slug" {
  type        = string
  description = "Internal application name used in URLs"
}

variable "backchannel_providers" {
  type        = list(number)
  default     = []
  description = "The IDs of backchannel providers to augment the functionality of applications"
}

variable "group" {
  type        = string
  default     = null
  description = "The group of the application"
}

variable "meta_description" {
  type        = string
  default     = null
  description = "The description of the application"
}

variable "meta_icon" {
  type        = string
  default     = null
  description = "The icon of the application"
}

variable "meta_launch_url" {
  type        = string
  default     = null
  description = "The launch URL of the application"
}

variable "meta_publisher" {
  type        = string
  default     = null
  description = "The publisher of the application"
}

variable "open_in_new_tab" {
  type        = bool
  default     = false
  description = "Whether or not a application should be opened in a new browser tab"
}

variable "policy_engine_mode" {
  type        = string
  default     = "any"
  description = "Whether all or any policies must match to grant access"

  validation {
    condition     = contains(["all", "any"], var.policy_engine_mode)
    error_message = "Valid values are all, any"
  }
}

variable "protocol_provider" {
  type        = number
  default     = null
  description = "The ID of the provider used by the application"
}

variable "uuid" {
  type        = string
  default     = null
  description = "The UUID of the application"
}
