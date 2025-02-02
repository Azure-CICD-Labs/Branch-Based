resource "azurerm_resource_group" "this" {
  name     = "rg-9000-${var.env}-${var.location_short}-01"
  location = var.location
}

# 9000