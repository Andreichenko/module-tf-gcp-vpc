output "subnet" {
  value = google_compute_subnetwork.subnet.name
}

output "subnet_pods" {
  value = var.subnet_pods
}

output "gke_pod" {
  value = "gke-pod"
}

output "gke_service" {
  value = "gke-service"
}