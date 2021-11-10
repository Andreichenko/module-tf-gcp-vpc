resource "google_compute_network" "shared_vpc" {
  name                    = var.net_name
  routing_mode            = "GLOBAL"
  auto_create_subnetworks = "false"

}