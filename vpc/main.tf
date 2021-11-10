
locals {
  enable_cloud_nat        = var.enable_cloud_nat == true ? 1 : 0
  cloud_nat_address_count = var.nat_ip_allocate_option != "AUTO_ONLY" ? var.cloud_nat_ipaddr_count * local.enable_cloud_nat : 0
  nat_ips                 = var.nat_ip_allocate_option != "AUTO_ONLY" ? google_compute_address.ip_address.*.self_link : null
}

resource "google_compute_network" "net" {
  name                    = var.net_name
  routing_mode            = "GLOBAL"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "subnet" {
  name                     = var.subnet_name
  ip_cidr_range            = var.subnet_range
  network                  = google_compute_network.network.self_link
  region                   = var.region
  private_ip_google_access = true

 secondary_ip_range {
    range_name    = "gke-service"
    ip_cidr_range = var.subnet_services
  }
 secondary_ip_range {
    range_name    = "gke-pod"
    ip_cidr_range = var.subnet_pods
  }

  lifecycle {
    ignore_changes = [secondary_ip_range]
  }
}

resource "google_compute_router" "router" {
  count = local.enable_cloud_nat
  network = google_compute_network.net.name
  region = var.region
  name = var.net_name
  
}