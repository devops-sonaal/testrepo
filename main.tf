resource "azurerm_resource_group" "testexamplerg" {
  name     = "example-test-rg"
  location = "East US"
}

resource "azurerm_storage_account" "rg01" {
  name                     = "databolexamplestorage2"
  resource_group_name      = azurerm_resource_group.testexamplerg.name
  location                 = azurerm_resource_group.testexamplerg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  
}
resource "azurerm_storage_account" "testexamplestorage" {
  name                     = "examplestoracc01"
  resource_group_name      = azurerm_resource_group.testexamplerg.name
  location                 = azurerm_resource_group.testexamplerg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
resource "azurerm_storage_container" "testexamplecontainer" {
  name                  = "tfstate0011"
  storage_account_id    = azurerm_storage_account.testexamplestorage.id
  container_access_type = "private"
}

resource "azurerm_resource_group" "testexamplerg01" {
  name     = "example-test-rg01"
  location = "East US"
}