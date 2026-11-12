variable "region" {
  description = "AWS region for the state bucket."
  type        = string
  default     = "us-east-1"
}

variable "project" {
  description = "Project name, used as a prefix for resource names."
  type        = string
  default     = "taskflow"
}

variable "alert_email" {
  description = "Email that receives the cost alerts."
  type        = string
}

variable "monthly_budget_usd" {
  description = "Monthly cost limit in USD. Alerts fire at 80% (actual) and 100% (forecast)."
  type        = number
  default     = 5
}
