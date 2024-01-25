module "resource_group" {
  source = "../RG1"
  rg     = var.rg
}

module "storage_account" {
  source     = "../SA"
  sa         = var.sa
  depends_on = [module.resource_group]
}


module "virtual_network" {
  source     = "../Vnet"
  vnet       = var.vnet
  depends_on = [module.resource_group]
}


module "Vnet_Peering" {
  source = "../Vnet-Peering"
  vnet-p = var.vnet-p
  #depends_on = [ module.resource_group , module.virtual_network ]
}

module "Subnet" {
  source     = "../SB"
  sb         = var.sb
  depends_on = [module.resource_group , module.virtual_network]
}

module "PublicIP" {
  source     = "../Pip"
  pip        = var.pip
  depends_on = [module.resource_group , module.virtual_network]
}

module "NIC" {
  source     = "../NIC"
  nic        = var.nic
  depends_on = [module.resource_group , module.virtual_network, module.PublicIP, module.Subnet]
}

module "NSG" {
  source     = "../NSG"
  nsg        = var.nsg
  depends_on = [module.resource_group, module.virtual_network, module.NIC]
}

module "NSG-NIC" {
  source     = "../NSG-NIC"
  nsi        = var.nsi
  depends_on = [module.resource_group, module.virtual_network, module.NIC, module.NSG]
}

/*
module "Key_Vault" {
  source     = "../KeyVault"
  kv         = var.kv
  depends_on = [module.resource_group]
}
*/

module "Virtual_Machine" {
  source     = "../VM"
  vm         = var.vm
  depends_on = [module.resource_group, module.virtual_network, module.NIC, module.NSG]
}

module "db_server" {
  source     = "../DB-Server"
  dbs        = var.dbs
  depends_on = [module.resource_group]
}

module "DB-SQL" {
  source     = "../DB-SQL"
  db         = var.db
  depends_on = [module.resource_group, module.db_server]
}

module "Bastion" {
  source     = "../Bastion"
  bs         = var.bs
  depends_on = [module.resource_group, module.virtual_network, module.Subnet, module.PublicIP]
}

module "Load-Balancer" {
  source     = "../LB"
  lb         = var.lb
  depends_on = [module.resource_group, module.virtual_network, module.Virtual_Machine, module.PublicIP , module.NIC]
}