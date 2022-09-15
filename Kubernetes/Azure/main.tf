resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.resource_group_location
}

resource "azurerm_kubernetes_cluster" "k8s" {
  name                = var.cluster_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = var.dns_prefix

  default_node_pool {
    name       = "wefoxnodepol"
    node_count = var.agent_count
    vm_size    = "standard_d2_v2"
  }
  service_principal {
      client_id     = var.aks_service_principal_app_id
      client_secret = var.aks_service_principal_client_secret
  }
  
  network_profile {
      load_balancer_sku = "Standard"
      network_plugin = "kubenet"
  }
  
  linux_profile {
    admin_username = "ubuntu"

    ssh_key {
      key_data = file(var.ssh_public_key)
    }
  }

  tags = {
      Environment = "Development"
  }
}