output "public_ip" {
  value = azurerm_public_ip.public_ip.ip_address
}

output "network_interface_id" {
  description = "The ID of the network interface"
  value       = azurerm_network_interface.my_terraform_nic.id
}
