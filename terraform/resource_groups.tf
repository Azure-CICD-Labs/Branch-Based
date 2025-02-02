resource "azurerm_resource_group" "this" {
  name     = "rg-test123-${var.env}-${var.location_short}-01"
  location = var.location
}

# fully working version