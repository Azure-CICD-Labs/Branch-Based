variable "env" {
  description = "The environment for the resources"
  type        = string
}

variable "location" {
  description = "The location for the resources"
  type        = string
  default     = "uksouth"
}

variable "location_short" {
  description = "The short location for the resources"
  type        = string
  default     = "uks"
}