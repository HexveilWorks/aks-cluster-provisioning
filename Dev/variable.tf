

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