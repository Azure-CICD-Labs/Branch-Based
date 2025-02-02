resource "azurerm_resource_group" "this" {
  name     = "rg-PR2DEV-${var.env}-${var.location_short}-01"
  location = var.location
}

# Testing PR to DEV!