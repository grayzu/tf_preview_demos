terraform {
  required_providers {
    azapi = {
      source  = "azure/azapi"
      version = "~>0.1"
    }

    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }
}

provider "azapi" {
}

provider "azurerm" {
  features {}
}
