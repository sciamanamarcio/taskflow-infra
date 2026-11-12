output "bucket_name" {
  description = "Name of the bucket that holds the site files."
  value       = aws_s3_bucket.site.bucket
}

output "bucket_arn" {
  description = "ARN of the bucket that holds the site files."
  value       = aws_s3_bucket.site.arn
}

output "distribution_id" {
  description = "ID of the CloudFront distribution."
  value       = aws_cloudfront_distribution.site.id
}

output "distribution_arn" {
  description = "ARN of the CloudFront distribution."
  value       = aws_cloudfront_distribution.site.arn
}

output "domain_name" {
  description = "Default CloudFront domain name of the site."
  value       = aws_cloudfront_distribution.site.domain_name
}
