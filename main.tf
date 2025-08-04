terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.38.1"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "4b594717-5f4e-4c70-b368-868651d0ee29"
}

resource "azurerm_resource_group" "rg" {
  count = length(var.rg)
  name     = "var.rg-${count.index}"
  location = var.location
}


