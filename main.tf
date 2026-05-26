terraform {
   backend "azurerm" {
   resource_group_name = "aditya123"
    storage_account_name = "digamberbhai12"                             
    container_name       = "huganda1"                             
    key                  = "prod.terraform.tfstate"               
   }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.68.0"
    }
  }
}
provider "azurerm" {
  features {}
}
resource "azurerm_resource_group" "manojbhai12" {
  name     = "aditya123"
  location = "westus"
}
resource "azurerm_storage_account" "mukeshbhai12" {
  name                     = "digamberbhai12"
  resource_group_name      = azurerm_resource_group.manojbhai12.name
  location                 = azurerm_resource_group.manojbhai12.location
  account_replication_type = "LRS"
  account_tier             = "Standard"
}
resource "azurerm_storage_container" "genuva" {
  name                  = "huganda1"
  storage_account_id    = azurerm_storage_account.mukeshbhai12.id
  container_access_type = "private"
}
