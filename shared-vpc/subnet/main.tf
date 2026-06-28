resource "google_compute_subnetwork" "subnet" {
  name                     = var.subnet_name
  ip_cidr_range            = var.subnet_range
  network                  = var.shared_vpc
  region                   = var.region
  private_ip_google_access = true

  dynamic "log_config" {
    for_each = var.enable_flow_logs == "true" || var.enable_flow_logs == true ? [1] : []
    content {
      aggregation_interval = "INTERVAL_5_SEC"
      flow_sampling        = 0.5
      metadata             = "INCLUDE_ALL_METADATA"
    }
  }
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