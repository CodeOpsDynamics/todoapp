rg = {
  "rg1" = {
    name     = "terrarg1"
    location = "West Europe"
  }
}

sa = {
  "sa1" = {
    name   = "terradynamicssa1"
    caname = "terradynamicsca1"
  }
}

sb = {
  "sb1" = {
    name            = "terrasb1"
    address_prefixe = ["10.0.1.0/24"]
    vname           = "terravnet1"
  }
  "sb2" = {
    name            = "terrasb2"
    address_prefixe = ["10.0.2.0/24"]
    vname           = "terravnet1"
  }
  "sb3" = {
    name            = "AzureBastionSubnet"
    address_prefixe = ["20.0.1.0/26"]
    vname           = "terravnet2"
  }
}

vm = {
  "vm1" = {
    name = "frontend"
    id   = "/subscriptions/fe38ffbb-18f3-41c5-9a63-a1ad7bd1ecfd/resourceGroups/terrarg1/providers/Microsoft.Network/networkInterfaces/terranic1"
  }
  "vm2" = {
    name = "backend"
    id   = "/subscriptions/fe38ffbb-18f3-41c5-9a63-a1ad7bd1ecfd/resourceGroups/terrarg1/providers/Microsoft.Network/networkInterfaces/terranic2"
  }
}

vnet = {
  "vnet1" = {
    name         = "terravnet1"
    addres_space = ["10.0.0.0/16"]
  }
  "vnet2" = {
    name         = "terravnet2"
    addres_space = ["20.0.0.0/16"]
  }
}

vnet-p = {
  "vnet-p1" = {
    name                = "peer1to2"
    name2               = "peer2to1"
    id                  = "/subscriptions/fe38ffbb-18f3-41c5-9a63-a1ad7bd1ecfd/resourceGroups/terrarg1/providers/Microsoft.Network/virtualNetworks/terravnet1"
    id2                 = "/subscriptions/fe38ffbb-18f3-41c5-9a63-a1ad7bd1ecfd/resourceGroups/terrarg1/providers/Microsoft.Network/virtualNetworks/terravnet2"
    vnetname            = "terravnet1"
    vnet2name           = "terravnet2"
    resource_group_name = "terrarg1"
  }
}

pip = {
  "pip1" = {
    name = "terrapip1"
  }
  "pip2" = {
    name = "terrapip2"
  }
}


nsi = {
  "ns1" = {
    nic_id = "/subscriptions/fe38ffbb-18f3-41c5-9a63-a1ad7bd1ecfd/resourceGroups/terrarg1/providers/Microsoft.Network/networkInterfaces/terranic1"
    nsg_id = "/subscriptions/fe38ffbb-18f3-41c5-9a63-a1ad7bd1ecfd/resourceGroups/terrarg1/providers/Microsoft.Network/networkSecurityGroups/terransg1"

  }
  "ns2" = {
    nic_id = "/subscriptions/fe38ffbb-18f3-41c5-9a63-a1ad7bd1ecfd/resourceGroups/terrarg1/providers/Microsoft.Network/networkInterfaces/terranic2"
    nsg_id = "/subscriptions/fe38ffbb-18f3-41c5-9a63-a1ad7bd1ecfd/resourceGroups/terrarg1/providers/Microsoft.Network/networkSecurityGroups/terransg2"
  }
  "ns3" = {
    nic_id = "/subscriptions/fe38ffbb-18f3-41c5-9a63-a1ad7bd1ecfd/resourceGroups/terrarg1/providers/Microsoft.Network/networkInterfaces/terranic3"
    nsg_id = "/subscriptions/fe38ffbb-18f3-41c5-9a63-a1ad7bd1ecfd/resourceGroups/terrarg1/providers/Microsoft.Network/networkSecurityGroups/terransg2"
  }
}


nsg = {
  "nsg1" = {
    name = "terransg1"
  }
  "nsg2" = {
    name = "terransg2"
  }
}


nic = {
  "nic1" = {
    name   = "terrasb1"
    names  = "terranic1"
    vname  = "terravnet1"
    rgname = "terrarg1"
    #subnet_id            = "/subscriptions/fe38ffbb-18f3-41c5-9a63-a1ad7bd1ecfd/resourceGroups/terrarg1/providers/Microsoft.Network/virtualNetworks/terravnet1/subnets/terrasb1"
  }
  "nic2" = {
    name   = "terrasb2"
    names  = "terranic2"
    vname  = "terravnet1"
    rgname = "terrarg1"
    #subnet_id            = "/subscriptions/fe38ffbb-18f3-41c5-9a63-a1ad7bd1ecfd/resourceGroups/terrarg1/providers/Microsoft.Network/virtualNetworks/terravnet1/subnets/terrasb2"
  }
  "nic3" = {
    name   = "terrasb1"
    names  = "terranic3"
    vname  = "terravnet1"
    rgname = "terrarg1"
    #subnet_id            = "/subscriptions/fe38ffbb-18f3-41c5-9a63-a1ad7bd1ecfd/resourceGroups/terrarg1/providers/Microsoft.Network/virtualNetworks/terravnet1/subnets/terrasb1"
  }
}

lb = {
  "lb1" = {
    name     = "terralb1"
    pip_name = "terrapip1"
    pip_id   = ["/subscriptions/fe38ffbb-18f3-41c5-9a63-a1ad7bd1ecfd/resourceGroups/terrarg1/providers/Microsoft.Network/publicIPAddresses/terrapip1"]
  }
}

db = {
  "db1" = {
    name = "terradb1"
    id   = "/subscriptions/fe38ffbb-18f3-41c5-9a63-a1ad7bd1ecfd/resourceGroups/terrarg1/providers/Microsoft.Sql/servers/terradbs1"

  }
}

dbs = {
  "dbs1" = {
    name = "terradbs1"
  }
}


bs = {
  "bs1" = {
    name   = "Terra-Bastion"
    sb_id  = "/subscriptions/fe38ffbb-18f3-41c5-9a63-a1ad7bd1ecfd/resourceGroups/terrarg1/providers/Microsoft.Network/virtualNetworks/terravnet2/subnets/AzureBastionSubnet"
    pip_id = "/subscriptions/fe38ffbb-18f3-41c5-9a63-a1ad7bd1ecfd/resourceGroups/terrarg1/providers/Microsoft.Network/publicIPAddresses/terrapip2"
  }
}

kv = "terrakv1"