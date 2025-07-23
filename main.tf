terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.36.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "6b6841bf-0578-47fa-9c22-85d13fdbef13"
}

resource "azurerm_resource_group" "rg" {
  count = length(var.rg)
  name     = "var.rg-${count.index}"
  location = var.location
}


