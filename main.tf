
terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.41.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "manoj_rg"          
    storage_account_name =  "manojstr06"                            
    container_name       = "manojcontainer"                            
    key                  = "devops.tfstate"               
  }
}

provider "azurerm" {
  # Configuration options
  features {}
  subscription_id = "e08e3abd-807e-4b84-8dff-5647daf004e3" 
}



resource "azurerm_resource_group" "rg" {
  name     = "samsung-rg-03"
  location = "West Europe"
}

resource "azurerm_resource_group" "rg" {
  name     = "samsung-rg-04"
  location = "West Europe"
}
