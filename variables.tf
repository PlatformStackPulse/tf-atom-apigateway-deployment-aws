variable "rest_api_id" {
  description = "ID of the REST API"
  type        = string
  validation {
    condition     = length(var.rest_api_id) > 0
    error_message = "rest_api_id must not be empty."
  }
}

variable "description" {
  description = "Description of the deployment"
  type        = string
  default     = null
}

variable "triggers" {
  description = "Map of triggers that force a new deployment"
  type        = map(string)
  default     = {}
}
