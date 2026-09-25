

terraform {
  required_providers {
    azurerm={
        source = "hashicorp/azurerm"
        version = "4.81.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "aks-rg"
    storage_account_name = "sthnkdjhfrom"
    container_name       = "testing-container"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
    features {}
    subscription_id = "34382dad-4d83-4e06-9eeb-c20a9624d946"
  
}
