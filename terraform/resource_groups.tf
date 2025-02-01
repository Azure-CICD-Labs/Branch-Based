resource "azurerm_resource_group" "this" {
  name     = "rg-test3-${var.env}-${var.location_short}-01"
  location = var.location
}