variable "role_name" {
  description = "Name of the IAM role that GitHub Actions assumes."
  type        = string
}

variable "github_repository" {
  description = "Repository allowed to assume the role, in the owner/name format."
  type        = string
}

variable "branch" {
  description = "Only workflows running on this branch can assume the role."
  type        = string
  default     = "main"
}

variable "bucket_arn" {
  description = "ARN of the bucket the role may write to."
  type        = string
}

variable "distribution_arn" {
  description = "ARN of the CloudFront distribution the role may invalidate."
  type        = string
}

variable "create_provider" {
  description = "Create the GitHub OIDC provider. An AWS account can have only one, so set this to false if it already exists."
  type        = bool
  default     = true
}
