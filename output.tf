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

output "ssh_login_forwarding_opnsense_webinterface" {
  value = "ssh -L 4711:10.0.0.36:443 -l ${var.username} ${data.azurerm_public_ip.onprem-pip.ip_address}"
}

output "opensense_webinterface" {
  value = "https://127.0.0.1:4711"
}

output "opensense_username" {
  value = "root"
}

output "opensense_password" {
  value = "opnsense"
}