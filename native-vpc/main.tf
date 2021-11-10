resource "google_container_cluster" "cluster" {
  name               = var.name
  location           = var.region
  min_master_version = var.kubernetes_version
  network            = var.network_name
  subnetwork         = var.nodes_subnetwork_name
  monitoring_service = var.monitoring_service
  logging_service    = var.logging_service

  ip_allocation_policy {
    cluster_secondary_range_name  = var.pods_secondary_ip_range_name
    services_secondary_range_name = var.services_secondary_ip_range_name
  }

  initial_node_count       = 1
  remove_default_node_pool = true

  master_auth {
    username = ""
    password = ""

    client_certificate_config {
      issue_client_certificate = false
    }
  }

  private_cluster_config {
    enable_private_endpoint = var.enable_private_endpoint
    enable_private_nodes    = var.enable_private_nodes
    master_ipv4_cidr_block  = var.master_ipv4_cidr_block
  }

  addons_config {
    network_policy_config {
      disabled = false
    }
  }

  network_policy {
    enabled = true
  }

  master_authorized_networks_config {
    dynamic "cidr_blocks" {
      for_each = var.master_authorized_network_cidrs
      content {
        cidr_block   = cidr_blocks.value.cidr_block
        display_name = lookup(cidr_blocks.value, "display_name", null)
      }
    }
  }

  maintenance_policy {
    daily_maintenance_window {
      start_time = var.maintenance_policy_start_time
    }
  }

  resource_labels = {
    kubernetescluster = var.name
  }

  lifecycle {
    ignore_changes = [
      node_pool,
      network,
      subnetwork,
    ]
  }
}