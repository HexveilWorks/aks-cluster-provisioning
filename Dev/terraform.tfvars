
resource-group={
rg1={
     rg_name  = "aks-new-rg"
    location = "centralindia"
}
}

aks={
aks1={
    aks_name="aks"
    location="centralindia"
    rg_name="aks-new-rg"
    dns_prefix = "exampldns"
}
}

vnet={
vnet1={
vnet_name="aks-vnet1"
rg_name="aks-new-rg"
location="centralindia"
address_space= ["10.0.0.0/16"]
}
}

subnet={
subnet1={
subnet_name="aks-subnet"
vnet_name="aks-vnet1"
rg_name="aks-new-rg"
address_prefixes=["10.0.1.0/24"]
}
}







