terraform {
  required_providers {
    azapi = {
      source = "Azure/azapi"
    }

    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.93.1"
    }
  }
}

provider "azapi" {
  subscription_id = "85b3dbca-5974-4067-9669-67a141095a76"
}

provider "azurerm" {
  features {}
  subscription_id = "85b3dbca-5974-4067-9669-67a141095a76"
}
