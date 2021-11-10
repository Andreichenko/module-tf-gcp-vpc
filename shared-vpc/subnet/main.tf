resource "google_compute_subnetwork" "subnet" {
    name = var.subnet_name
    ip_cidr_range = var.subnet_range
    network = var.shared_vpc
    region = var.region
    private_ip_google_access = true
    enable_flow_logs = variable "enable_flow_logs" {
        type = string
        description = "(optional) describe your variable"
    }
    secondary_ip_range =  {
      ip_cidr_range = var.subnet_pods
      range_name = "value"
    } 

  
}