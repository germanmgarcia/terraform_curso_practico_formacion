provider "azurerm" {
  version = "3.45.0"
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = var.group_name
  location = var.group_location
}

resource "azurerm_storage_account" "storage_account" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
}

resource "azurerm_storage_container" "container" {
  for_each              = toset(var.containers)
  name                  = each.value
  storage_account_name  = azurerm_storage_account.storage_account.name
  container_access_type = "private"
}