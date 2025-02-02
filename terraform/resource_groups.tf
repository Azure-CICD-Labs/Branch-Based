resource "azurerm_resource_group" "this" {
  name     = "rg-12345-${var.env}-${var.location_short}-01"
  location = var.location
}

# 12345