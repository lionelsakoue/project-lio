resource "google_container_cluster" "gke" {
  name     = var.cluster_name
  location = var.region

  initial_node_count = var.initial_node_count

  node_config {
    machine_type = var.machine_type
    oauth_scopes  = [
      "https://www.googleapis.com/auth/cloud-platform",
    ]
  }

  lifecycle {
    create_before_destroy = true
  }

  remove_default_node_pool = true
  enable_kubernetes_alpha  = false
}

resource "google_container_node_pool" "primary_nodes" {
  name       = "${google_container_cluster.primary.name}-node-pool"
  location   = var.region
  cluster    = google_container_cluster.primary.name
  node_count = var.initial_node_count

  node_config {
    machine_type = var.machine_type
    oauth_scopes  = [
      "https://www.googleapis.com/auth/cloud-platform",
    ]
  }
}

