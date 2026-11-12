variable "bucket_name" {
  description = "Globally unique name of the S3 bucket that holds the site files."
  type        = string
}

variable "force_destroy" {
  description = "Allow Terraform to delete the bucket even when it still has files. Use only in disposable environments."
  type        = bool
  default     = false
}

variable "price_class" {
  description = "CloudFront price class. PriceClass_100 covers North America and Europe at the lowest cost."
  type        = string
  default     = "PriceClass_100"
}
