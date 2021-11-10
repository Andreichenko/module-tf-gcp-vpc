variable "shared_vpc" {
  description = "This is the self_link of the shared vpc to create subnetwork in"
}

variable "region" {
  description = "The common region"
}

variable "subnet_name" {
  description = "The name for the subnetwork"
}

variable "enable_flow_logs" {
  description = "The flow logs"
}

variable "subnet_range" {
  description = "CIDR for subnet nodes"
}

variable "subnet_pods" {
  description = "This is the secondary CIDR for pods"
}

variable "subnet_services" {
  description = "This is the secondary CIDR for services"
}