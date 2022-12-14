variable "resource_group_name" {
  default = "wefox"
  description = "Name of the reource group"
}

variable "resource_group_location" {
  default       = "East US"
  description   = "Location of the resource group."
}

variable "agent_count" {
    default = 1
    description = "Number of nodes in a pool"
}

variable "ssh_public_key" {
    default =   "C:/Documents/surance_key_pair.pem"
    description = "SSH Key PAIR"
}

variable "dns_prefix" {
    default = "wefox-cluster"
    description = "DNS Prefix"
}

variable cluster_name {
    default = "wefox-challenge-cluster"
    description = "cluster name"
}

variable "aks_service_principal_app_id" {
  default = ""
}

variable "aks_service_principal_client_secret" {
  default = ""
}

variable "tenant_id" {
  default = ""
}

variable "subscription_id" {
  default = ""
}