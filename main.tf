resource "aws_api_gateway_deployment" "this" {
  count = module.this.enabled ? 1 : 0

  rest_api_id = var.rest_api_id
  description = var.description

  triggers = var.triggers

  lifecycle {
    create_before_destroy = true
  }
}
