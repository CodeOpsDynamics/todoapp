output "nic-id" {
  value = [
    for nic in azurerm_network_interface.nicconnect : nic.id
  ]
}