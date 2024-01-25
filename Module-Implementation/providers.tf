terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.88.0"
    }
  } /*
  backend "azurerm" {
    resource_group_name  = "terrarg1"
    storage_account_name = "terradynamicssa1"
    container_name       = "terradynamicsca1"
    key                  = "module.terraform.tfstate"
  }*/
}

provider "azurerm" {
  features {}
}