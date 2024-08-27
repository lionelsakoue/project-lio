output "cluster_name" {
  description = "The name of the Kubernetes cluster."
  value       = google_container_cluster.primary.name
}

output "cluster_endpoint" {
  description = "The endpoint of the Kubernetes cluster."
  value       = google_container_cluster.primary.endpoint
}

output "cluster_ca_certificate" {
  description = "The CA certificate for the Kubernetes cluster."
  value       = google_container_cluster.primary.master_auth.0.cluster_ca_certificate
}

