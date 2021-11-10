
output "net_link" {
  value = google_compute_network.network.self_link
}

output "subnet" {
  value = google_compute_subnetwork.subnetwork.self_link
}

output "subnet_link" {
  value = google_compute_subnetwork.subnetwork.self_link
}

output "net_router_link" {
  value = local.enable_cloud_nat == 1 ? google_compute_router.router.*.self_link : null
}

output "subnetwork_pods" {
  value = var.subnet_pods
}

output "subnet_range" {
  value = var.subnet_range
}

output "gke_pod" {
  value = "gke-pod"
}

output "gke_service" {
  value = "gke-service"
}
