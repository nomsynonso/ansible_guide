# https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_environment_variables?view=powershell-7.2

variable "prefix" {
  description = "The prefix which should be used for all resources in this example"
  default     = "ansible"
  type        = string
}

variable "location" {
  description = "The Azure Region in which all resources in this example should be created."
  default     = "eastus"
  type        = string
}

variable "username" {
  description = "admin username to login to the server"
  default     = "$Env:ansible_username"
}

variable "password" {
  description = "admin password to login to the server"
  sensitive = true
  # $Env:ansible_password = 'password'    to set
  # $Env:ansible_password = ''            to un-set
  default = "$Env:ansible_password"
}