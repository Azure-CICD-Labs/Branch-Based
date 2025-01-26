resource "azurerm_resource_group" "web" {
  name     = "rg-web-multi-bb-app-${var.env}-${var.prim_loc_short}-01"
  location = var.prim_loc
}

resource "azurerm_resource_group" "sql" {
  name     = "rg-sql-updated-bb-app-${var.env}-${var.prim_loc_short}-01"
  location = var.prim_loc
}

resource "azurerm_resource_group" "net" {
  name     = "rg-net-multi-bb-app-${var.env}-${var.prim_loc_short}-01"
  location = var.prim_loc
}

# test comment!!