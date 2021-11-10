
locals {
  enable_cloud_nat        = var.enable_cloud_nat == true ? 1 : 0
  cloud_nat_address_count = var.nat_ip_allocate_option != "AUTO_ONLY" ? var.cloud_nat_ipaddr_count * local.enable_cloud_nat : 0
  nat_ips                 = var.nat_ip_allocate_option != "AUTO_ONLY" ? google_compute_address.ip_address.*.self_link : null
}

resource "google_compute_network" "network" {
  name                    = var.net_name
  routing_mode            = "GLOBAL"
  auto_create_subnetworks = false
}