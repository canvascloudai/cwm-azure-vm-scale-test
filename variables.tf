variable "location" {
  type        = string
  description = "Azure region for all resources."
  default     = "eastus"
}

variable "resource_group_name" {
  type        = string
  description = "Name of the Azure resource group."
  default     = "rg-cwm-vm-scale-test"
}

variable "admin_username" {
  type        = string
  description = "Local administrator username for the Windows virtual machines."
  default     = "cwmadmin"
}

variable "admin_password" {
  type        = string
  description = "Local administrator password for the Windows virtual machines. Do not commit a real value."
  sensitive   = true
}

variable "vm_size" {
  type        = string
  description = "Azure VM size. Baseline and scale-out both use Standard_D2s_v3."
  default     = "Standard_D2s_v3"
}
