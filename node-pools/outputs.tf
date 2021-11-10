output "name" {
  description = "The static name of the GKE cluster"
  value       = google_container_node_pool.node_pool.name
}