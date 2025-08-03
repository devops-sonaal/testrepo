terraform {
    required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.25.0"
    }
  }
#  backend "azurerm" {
#     subscription_id      = "84382787-1367-4937-befb-9757f44087ef"
#     resource_group_name  = "example-test-rg"  
#     storage_account_name = "databolexamplestorage1" 
#     container_name       = "tfstate0011"      
#     key                  = "test001.tfstate"  
#   }
}


provider "azurerm" {
  # Configuration options
  features {}
  subscription_id = "84382787-1367-4937-befb-9757f44087ef"
}

