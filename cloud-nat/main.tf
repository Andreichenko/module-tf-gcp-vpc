locals {
  cloud_nat_address_count = var.nat_ip_allocate_option != "AUTO_ONLY" ? var.cloud_nat_addr_count : 0
  nat_ips                 = var.nat_ip_allocate_option != "AUTO_ONLY" ? google_compute_address.ip_address.*.self_link : null
}

resource "google_compute_network" "net" {
  name = var.net_name
  routing_mode            = "GLOBAL"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "subnet"{
    name                   = var.subnet_name
  ip_cidr_range            = var.subnet_range
  network                  = google_compute_network.net.self_link
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
    range_name    = "gke-pods"
    ip_cidr_range = var.subnet_pods
  }

  secondary_ip_range {
    range_name    = "gke-services"
    ip_cidr_range = var.subnet_services
  }

  lifecycle {
    ignore_changes = [secondary_ip_range]
  }
}

resource "google_compute_router" "router" {
  name    = var.net_name
  network = google_compute_network.net.name
  region  = var.region
}

resource "google_compute_address" "ip_address" {
  count  = local.cloud_nat_address_count
  name   = "nat-external-address-${count.index}"
  region = var.region
}

resource "google_compute_router_nat" "nat_router" {
  name                               = var.net_name
  router                             = google_compute_router.router.name
  region                             = var.region
  nat_ip_allocate_option             = var.nat_ip_allocate_option
  nat_ips                            = local.nat_ips
  source_subnetwork_ip_ranges_to_nat = "ALL_SUBNETWORKS_ALL_IP_RANGES"
}
