output "pip-id" {
  value = [
    for pip in azurerm_public_ip.pipconnect : pip.id
  ]
}