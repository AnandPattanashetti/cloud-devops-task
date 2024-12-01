output "atc_cloud_task_cluster_id" {
  description = "EKS cluster ID."
  value       = module.eks.cluster_id
}

output "atc_cloud_task_cluster_endpoint" {
  description = "Endpoint for EKS control plane."
  value       = module.eks.cluster_endpoint
}

output "atc_cloud_task_cluster_security_group_id" {
  description = "Security group ids attached to the cluster control plane."
  value       = module.eks.cluster_security_group_id
}

output "atc_cloud_task_region" {
  description = "AWS region"
  value       = var.aws_region
}

output "atc_cloud_task_oidc_provider_arn" {
  value = module.eks.oidc_provider_arn
}

#output "atc_cloud_task_zz_update_kubeconfig_command" {
#  value = format("%s %s %s %s", "aws eks update-kubeconfig --name", module.eks.cluster_id, "--region", var.aws_region)
#}
