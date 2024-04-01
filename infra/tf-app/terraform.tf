terraform {
  required_version = ">= 0.12"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>2.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "song0138-githubactions-rg"
    storage_account_name = "song0138githubaction"
    container_name       = "tfstate"
    key                  = "prod.app.tfstate"
   
  }
}

provider "azurerm" {
  features {}
}
