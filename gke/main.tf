resource "google_container_cluster" "primary" {
  name     = var.cluster_name
  location = var.region

  initial_node_count = var.initial_node_count

  # Enable monitoring and logging
  enable_stackdriver_kubernetes = true

  # Set network and subnetwork
  network    = "default"  # Adjust network as needed
  subnetwork = "default"  # Adjust subnetwork as needed

  # Node pool configuration
  node_config {
    machine_type = var.machine_type
    disk_size_gb = var.disk_size_gb  # Set disk size
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform",
    ]
  }

  # Configure zones for nodes
  node_locations = ["us-central1-a", "us-central1-b"]

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
    disk_size_gb = var.disk_size_gb  # Set disk size
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform",
    ]
  }
}

