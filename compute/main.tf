data "google_compute_zones" "available" {
  region = var.region
  status = "UP"
}

resource "google_compute_address" "instances" {
  count = var.instance_count
  name  = "${var.name_prefix}-${count.index}"
}