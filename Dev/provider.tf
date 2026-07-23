

terraform {
  required_providers {
    azurerm={
        source = "hashicorp/azurerm"
        version = "4.81.0"
    }
  }
}

provider "azurerm" {
    features {}
    subscription_id = "23bda82c-1340-4fc5-aa71-ad7001c6e720"
  
}