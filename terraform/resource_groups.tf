resource "azurerm_resource_group" "rg" {
  name     = "rg-web-multi-app-${var.env}-${var.prim_loc_short}-01"
  location = var.prim_loc
}

resource "azurerm_resource_group" "rg" {
  name     = "rg-sql-multi-app-${var.env}-${var.prim_loc_short}-01"
  location = var.prim_loc
}

resource "azurerm_resource_group" "rg" {
  name     = "rg-net-multi-app-${var.env}-${var.prim_loc_short}-01"
  location = var.prim_loc
}