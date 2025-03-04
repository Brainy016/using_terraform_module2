variable "rg_location"{
    description = "The location/region where the resource group will be created"
    type = string
}

variable "rg_name"{
    description = "The name of the resource group"
    type = string
}

variable "prefix" {
  description = "Prefix for naming resources"
  type        = string
  default     = "my-default-prefix"  # Optional, change as needed
}
