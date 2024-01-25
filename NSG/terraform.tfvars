nsg = {
  "nsg1" = {
    name = "terransg1"
  }
  "nsg2" = {
    name = "terransg2"
  }
}

rule = {
  "rl1" = {
    name = "Inbound"
    n = "1"
    priority                   = 100
    port = "80"
    ds = null
  }
  "rl2" = {
    name = "Outbound"
    n = "2"
    priority                   = 200
    port = "22"
  }
  "rl4" = {
    name = "Outbound"
    n = "3"
    priority                   = 300
    port = "443"
    ds = "yesas"
}}