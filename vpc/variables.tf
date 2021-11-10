
variable "net_name" {
  type        = string
  description = "the name of the network in gcp"
}

variable "subnet_range" {
  type        = string
  description = "CIDR for subnetwork nodes this is the main range"
}

variable "subnet_pods" {
  type        = string
  description = "The secondary CIDR for kubernetes pods"
}

variable "subnet_services" {
  type        = string
  description = "The secondary CIDR for kubernetes services"
}

variable "subnet_name" {
  type        = string
  description = "This is the name for the subnetwork in gcp"
}

variable "region" {
  type        = string
  description = "The main region for deployment"
}

variable "enable_flow_logs" {
  type        = string
  description = "The flow log"
}

variable "cloud_nat_ipaddr_count" {
  description = "The count of external ip address to assign to the cloud-nat object"
  type        = number
  default     = 1
}

variable "enable_cloud_nat" {
  type        = bool
  description = "Setup Cloud NAT gateway for common VPC"
  default     = false
}

variable "nat_ip_allocate_option" {
  description = "AUTO_ONLY or MANUAL_ONLY"
  type        = string
  default     = "AUTO_ONLY"
}







