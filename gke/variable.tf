variable "cluster_name" {
  description = "The name of the Kubernetes cluster."
  type        = string
  default     = "my-gke-cluster"  # Default value for cluster name
}

variable "region" {
  description = "The GCP region in which the cluster will be created."
  type        = string
  default     = "us-central1"     # Default value for region
}

variable "initial_node_count" {
  description = "The number of nodes to initially create in the cluster."
  type        = number
  default     = 1                 # Default value for initial node count
}

variable "machine_type" {
  description = "The machine type to use for nodes in the cluster."
  type        = string
  default     = "e2-micro"   # Default value for machine type
}

variable "disk_size_gb" {
  description = "The size of the disk in gigabytes."
  type        = number
  default     = 10
}
