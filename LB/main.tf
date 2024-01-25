resource "azurerm_lb" "lbconnect" {
  for_each            = var.lb
  name                = each.value.name
  location            = data.azurerm_resource_group.rgconnect.location
  resource_group_name = data.azurerm_resource_group.rgconnect.name
  sku                 = "Standard"

  frontend_ip_configuration {
    name                 = each.value.pip_name
    public_ip_address_id = each.value.pip_id[0]
  }
}

resource "azurerm_lb_backend_address_pool" "bpconnect" {
  for_each        = var.lb
  loadbalancer_id = azurerm_lb.lbconnect[each.key].id
  name            = "BackEndAddressPool"
}

resource "azurerm_lb_rule" "lbruleconnect" {
  for_each                       = var.lb
  loadbalancer_id                = azurerm_lb.lbconnect[each.key].id
  name                           = "LBRule"
  protocol                       = "Tcp"
  frontend_port                  = 80
  backend_port                   = 80
  frontend_ip_configuration_name = "terrapip1"
  disable_outbound_snat          = true
  backend_address_pool_ids  = [azurerm_lb_backend_address_pool.bpconnect[each.key].id]
  probe_id = azurerm_lb_probe.prconnect[each.key].id
}

resource "azurerm_network_interface_backend_address_pool_association" "bnconnect" {
  for_each                = var.lb
  network_interface_id    = data.azurerm_network_interface.nicconnect.id
  ip_configuration_name   = "internal"
  backend_address_pool_id = azurerm_lb_backend_address_pool.bpconnect[each.key].id
}


resource "azurerm_lb_probe" "prconnect" {
  for_each        = var.lb
  loadbalancer_id = azurerm_lb.lbconnect[each.key].id
  name            = "http-running-probe"
  port            = 80
}