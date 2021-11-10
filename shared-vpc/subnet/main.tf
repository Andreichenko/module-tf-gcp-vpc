resource "google_compute_subnetwork" "subnet" {
  name                     = var.subnet_name
  ip_cidr_range            = var.subnet_range
  network                  = var.shared_vpc
  region                   = var.region
  private_ip_google_access = true
  enable_flow_logs         = var.enable_flow_logs
  secondary_ip_range {
    ip_cidr_range = var.subnet_pods
    range_name    = "gke-pod"
  }
  secondary_ip_range {
    ip_cidr_range = var.subnet_services
    range_name    = "gke-service"
  }
  lifecycle {
    ignore_changes = [secondary_ip_range]
  }


}