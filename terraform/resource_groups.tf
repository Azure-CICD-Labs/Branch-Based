resource "azurerm_resource_group" "web" {
  name     = "rg-web-multi-app-${var.env}-${var.prim_loc_short}-01"
  location = var.prim_loc
}

resource "azurerm_resource_group" "sql" {
  name     = "rg-sql-multi-app-${var.env}-${var.prim_loc_short}-01"
  location = var.prim_loc
}

resource "azurerm_resource_group" "net" {
  name     = "rg-net-multi-app-${var.env}-${var.prim_loc_short}-01"
  location = var.prim_loc
}

# test comment!!