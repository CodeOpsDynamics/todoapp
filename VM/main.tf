resource "azurerm_linux_virtual_machine" "vmconnect" {
  for_each            = var.vm
  name                = each.value.name
  resource_group_name = data.azurerm_resource_group.rgconnect.name
  location            = data.azurerm_resource_group.rgconnect.location
  size                = "Standard_F2"
  disable_password_authentication = "false"
  #admin_username      = data.azurerm_key_vault_secret.username.value
  #admin_password      = data.azurerm_key_vault_secret.password.value
  network_interface_ids = [
    each.value.id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}
