output "state_bucket_name" {
  description = "Bucket to use as the Terraform backend in the other stacks."
  value       = aws_s3_bucket.state.bucket
}
