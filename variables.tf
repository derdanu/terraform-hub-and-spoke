variable "azurelocation" {
  description = "Azure Location of the Cloud assets / Hub + Spoke"
  default     = "EastUS"
}

variable "onpremlocation" {
  description = "Azure Location of the On-Premise assets"
  default     = "WestUS"
}

variable "username" {
  description = "Username for Virtual Machines"
  default     = "testadmin"
}

variable "password" {
  description = "Password for Virtual Machines"
  default     = "Password1234!"
}

variable "vmsize" {
  description = "Size of the VMs"
  default     = "Standard_DS1_v2"
}

