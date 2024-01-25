output "vnet_id" {
  value = [
    for vnet in azurerm_virtual_network.vnetconnect : vnet.id
  ]
}