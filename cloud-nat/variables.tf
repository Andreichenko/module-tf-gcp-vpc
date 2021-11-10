variable "net_name" {
    type = string
  description = "The name of the network"
}

variable "subnet_name" {
    type = string
  description = "The name for the subnetwork"
}

variable "subnet_range" {
    type = string
  description = "The new object CIDR for subnetwork nodes"
}

variable "subnet_pods" {
    type = string
  description = "This is the secondary CIDR for pods"
}

variable "subnet_services" {
    type = string
  description = "This is the secondary CIDR for services"
}

variable "region" {
    type = string
  description = "This is the common region "
}

variable "enable_flow_logs" {
    type = string
  description = "The flow logs "
}

variable "nat_ip_allocate_option" {
  description = "This can be use AUTO_ONLY or MANUAL_ONLY"
  default     = "AUTO_ONLY"
}

variable "cloud_nat_addr_count" {
  description = "This is the count of external ip address to assign to the cloud-nat object"
  default     = 1
}
