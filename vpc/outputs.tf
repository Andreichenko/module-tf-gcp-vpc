
output "net_link" {
  value = google_compute_network.net.self_link
  description = "The network link "
}

output "subnet" {
  value = google_compute_subnetwork.subnet.self_link
  description = "This is the common link"
}

output "subnet_link" {
  value = google_compute_subnetwork.subnet.self_link
  description = "The subnetwork link"
}

output "net_router_link" {
  value = local.enable_cloud_nat == 1 ? google_compute_router.router.*.self_link : null
  description = "The network router link"
}

output "subnetwork_pods" {
  value = var.subnet_pods
  description = "The name of subnet for kubernetes pods"
}

output "subnet_range" {
  value = var.subnet_range
  description = "The subnet ranges"
}

output "gke_pod" {
  value = "gke-pod"
  description = "The name of the pod"
}

output "gke_service" {
  value = "gke-service"
  description = "the name of the service"
}
