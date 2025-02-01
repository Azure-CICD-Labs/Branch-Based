resource "azurerm_resource_group" "web" {
  name     = "rg-web-NEW-app-${var.env}-${var.prim_loc_short}-01"
  location = var.prim_loc
}

resource "azurerm_resource_group" "sql" {
  name     = "rg-sql-NEW-TEST-app-${var.env}-${var.prim_loc_short}-01"
  location = var.prim_loc
}

resource "azurerm_resource_group" "net" {
  name     = "rg-net-NEW-TEST-app-${var.env}-${var.prim_loc_short}-01"
  location = var.prim_loc
}


# test comment