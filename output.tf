data "azurerm_public_ip" "onprem-pip" {
  name                = azurerm_public_ip.onprem-pip.name
  resource_group_name = azurerm_virtual_machine.onprem-vm.resource_group_name
}

output "public_ip_address" {
  value = data.azurerm_public_ip.onprem-pip.ip_address
}

output "ssh_login" {
  value = "ssh -l ${var.username} ${data.azurerm_public_ip.onprem-pip.ip_address}"
}