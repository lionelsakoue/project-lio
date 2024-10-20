variable "cluster_name" {
  description = "The name of the Kubernetes cluster."
  type        = string
  default     = "my-gke-cluster"
}

variable "region" {
  description = "The GCP region in which the cluster will be created."
  type        = string
  default     = "us-central1"
}

variable "initial_node_count" {
  description = "The number of nodes to initially create in the cluster."
  type        = number
  default     = 1
}

variable "machine_type" {
  description = "The machine type to use for nodes in the cluster."
  type        = string
  default     = "e2-medium"
}

variable "disk_size_gb" {
  description = "The size of the disk in gigabytes."
  type        = number
  default     = 20
}
