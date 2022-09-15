terraform {
    required_version = "v1.1.9"
    required_providers {
      azurerm = {
        source = "hashicorp/azurerm"
        version = "=2.99.0"
      }
      azureread = {
        source  = "hashicorp/azuread"
        version = "1.1.1"
      }
    }
}

provider "azurerm" {
  subscription_id = var.subscription_id
  client_id       = var.aks_service_principal_app_id
  client_secret   = var.aks_service_principal_client_secret
  tenant_id       = var.tenant_id

  features {}
  
}
provider "azuread" {
  client_id     = var.aks_service_principal_app_id
  client_secret = var.aks_service_principal_client_secret
  tenant_id     = var.tenant_id
}