resource "azurerm_resource_group" "this" {
  name     = "rg-test10-${var.env}-${var.location_short}-01"
  location = var.location
}

# fully working version