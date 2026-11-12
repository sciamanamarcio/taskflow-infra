variable "region" {
  description = "AWS region."
  type        = string
  default     = "us-east-1"
}

variable "project" {
  description = "Project name, used as a prefix for resource names."
  type        = string
  default     = "taskflow"
}

variable "environment" {
  description = "Environment name."
  type        = string
  default     = "dev"
}

variable "github_repository" {
  description = "Repository allowed to deploy the site, in the owner/name format."
  type        = string
  default     = "sciamanamarcio/taskflow-dashboard"
}

variable "create_oidc_provider" {
  description = "Create the GitHub OIDC provider. Set to false if the AWS account already has one."
  type        = bool
  default     = true
}
