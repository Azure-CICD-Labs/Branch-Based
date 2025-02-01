resource "azurerm_resource_group" "this" {
  name     = "rg-example-${var.env}-${var.location_short}-01"
  location = var.location
}