terraform {
  required_providers {
    azapi = {
      source  = "Azure/azapi"
      version = "=0.0.1"
    }

    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.93.1"
    }
  }
}

provider "azapi" {
}

provider "azurerm" {
  features {}
}
