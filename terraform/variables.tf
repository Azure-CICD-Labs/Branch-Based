variable "container_name" {
  description = "The name of the Azure Storage container to store Terraform state file"
}

variable "env" {
  description = "The environment for the Azure resources"
}

variable "prim_loc" {
  description = "The primary location for the Azure resources"
  default     = "uksouth"
}

variable "prim_loc_short" {
  description = "The short name of the primary location for the Azure resources"
  default     = "uks"
}

variable "sec_loc" {
  description = "The secondary location for the Azure resources"
  default     = "ukwest"
}

variable "sec_loc_short" {
  description = "The short name of the secondary location for the Azure resources"
  default     = "ukw"
}