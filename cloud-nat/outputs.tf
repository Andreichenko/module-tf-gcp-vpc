output "network_self_link" {
  value = google_compute_network.net.self_link
}

output "subnet" {
  value = google_compute_subnetwork.subnet.self_link
}

output "subnet_self_link" {
  value = google_compute_subnetwork.subnet.self_link
}

output "router_self_link" {
  value = google_compute_router.router.self_link
}

output "subnet_pods" {
  value = var.subnet_pods
}

output "subnet_range" {
  value = var.subnet_range
}

output "gke_pods" {
  value = "gke-pods"
}

output "gke_services" {
  value = "gke-services"
}