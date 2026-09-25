

variable "resource-group" {

  type = map(object({
    rg_name  = string
    location = string
  }))
}


variable "aks" {
  type = map(object({
    aks_name=string
    location=string
    rg_name=string
    dns_prefix = string
  }))
}

variable "vnet"{
type=map(object{(
vnet_name=string
rg_name=string
location=string
address_space=list(string)
)})
}

variable "subnet"{
type=map(object{(
subnet_name=string
vnet_name=string
rg_name=string
address_prefixes=list(string)
)})
}
