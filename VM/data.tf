data "azurerm_resource_group" "rgconnect" {
  name = "terrarg1"
}
/*
data "azurerm_key_vault" "kv-connect" {
  name                = "terrakv1"
  resource_group_name = "terrarg1"
}


data "azurerm_key_vault_secret" "username" {
  name         = "username"
  key_vault_id = data.azurerm_key_vault.kv-connect.id
}


data "azurerm_key_vault_secret" "password" {
  name         = "password"
  key_vault_id = data.azurerm_key_vault.kv-connect.id
}
*/
