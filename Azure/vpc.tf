resource "azurerm_virtual_network" "vnet1" { 
  name = "${var.vnet_name}" 
  location = "${var.location}" 
  resource_group_name = "${azurem_resource_group.example.com}" 
  address_space = ["${var.address_space}"] 
} 