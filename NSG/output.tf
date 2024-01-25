output "nsg-id" {
  value = [
    for nsg in azurerm_network_security_group.nsgconnect : nsg.id
  ]
}