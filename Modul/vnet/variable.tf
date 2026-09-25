
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
