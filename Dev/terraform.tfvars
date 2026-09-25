
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

