variable "atc_cloud_task_kubernetes_version" {
  default     = "1.27"
  description = "Kubernetes version"
}

variable "atc_cloud_task_vpc_cidr" {
  default     = "10.0.0.0/16"
  description = "Default CIDR range of the VPC"
}

variable "atc_cloud_task_aws_region" {
  default     = "ap-south-1"
  description = "AWS region"
}
