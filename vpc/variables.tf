
variable "net_name" {
  description = "the name of the network in gcp"
}

variable "subnet_range" {
  description = "CIDR for subnetwork nodes this is the main range"
}

variable "subnet_pods" {
  description = "The secondary CIDR for kubernetes pods"
}

variable "subnet_services" {
  description = "The secondary CIDR for kubernetes services"
}

variable "subnet_name" {
  description = "This is the name for the subnetwork in gcp"
}

variable "region" {
  description = "The main region for deployment"
}

variable "enable_flow_logs" {
  description = ""
}

variable "cloud_nat_ipaddr_count" {
  description = "the count of external ip address to assign to the cloud-nat object"
  type        = number
  default     = 1
}

variable "enable_cloud_nat" {
  description = "Setup Cloud NAT gateway for common VPC"
  default     = false
}

variable "nat_ip_allocate_option" {
  description = "AUTO_ONLY or MANUAL_ONLY"
  type        = string
  default     = "AUTO_ONLY"
}







