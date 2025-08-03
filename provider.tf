terraform {
  required_version = ">= 1.10.5"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.33.0"
    }
  }
backend "azurerm" {
    resource_group_name  = "new_rg"
    storage_account_name = "mynewstorgaesuman"         
    container_name       = "stgcontainer"
    key                  = "terraform.tfstate"

}

provider "azurerm" {
  features {}
  subscription_id = "ae3dc4b8-c6c2-443e-b765-214338d62948"

}