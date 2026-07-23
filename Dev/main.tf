

module "rg" {

    source = "../Modul/Resource-group"
    resource-group=var.resource-group
  
}

module "AKS" {
    depends_on = [ module.rg ]
    source = "../Modul/Azure-Kubernetese-"
    aks=var.aks
}