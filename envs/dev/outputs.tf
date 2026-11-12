output "site_url" {
  description = "Public URL of the site."
  value       = "https://${module.site.domain_name}"
}

output "bucket_name" {
  description = "Bucket that holds the site files."
  value       = module.site.bucket_name
}

output "distribution_id" {
  description = "CloudFront distribution ID, needed to invalidate the cache."
  value       = module.site.distribution_id
}

output "deploy_role_arn" {
  description = "Role the dashboard workflow assumes to deploy."
  value       = module.github_deploy.role_arn
}
