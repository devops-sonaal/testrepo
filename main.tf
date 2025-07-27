resource "azurerm_resource_group" "testexamplerg" {
  name     = "exampledata-test-rg01"
  location = "East US"
}


resource "azurerm_storage_account" "testexamplestorage" {
  name                     = "databolexamplestorage1"
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

