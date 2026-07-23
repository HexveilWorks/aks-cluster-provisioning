

resource "azurerm_kubernetes_cluster" "Aks" {


  for_each            = var.aks
  name                = each.value.aks_name
  location            = each.value.location
  resource_group_name = each.value.rg_name
  dns_prefix          = each.value.dns_prefix

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_D4s_v3"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "Dev"
  }
}



resource "azurerm_kubernetes_cluster_node_pool" "spot" {
  depends_on = [ azurerm_kubernetes_cluster.Aks ]
  for_each = var.aks

  kubernetes_cluster_id = azurerm_kubernetes_cluster.Aks[each.key].id

  name       = "spot"
  vm_size    = "Standard_D4s_v3"
  node_count = 1

  priority        = "Spot"
  eviction_policy = "Delete"

  mode = "User"
}

