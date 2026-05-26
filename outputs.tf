output "enabled" {
  description = "Whether the module is enabled"
  value       = local.enabled
}

output "id" {
  description = "ID of the deployment"
  value       = try(aws_api_gateway_deployment.this[0].id, null)
}

output "execution_arn" {
  description = "Execution ARN of the deployment"
  value       = try(aws_api_gateway_deployment.this[0].execution_arn, null)
}
