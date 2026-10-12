resource "azurerm_virtual_network" "vnets" {
  for_each            = var.vnets
  name                = each.value.vnets_dev_name
  resource_group_name = each.value.rg_dev_name
  location            = each.value.location
  address_space       = each.value.address_space
}
