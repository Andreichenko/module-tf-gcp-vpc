output "shared_vpc" {
    value = google_compute_network.shared_vpc.self_link
  description = "the link"
}

output "region" {
    value = var.region
    description = "The region in which the network exists"
  
}