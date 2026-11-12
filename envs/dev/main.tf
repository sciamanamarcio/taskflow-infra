data "aws_caller_identity" "current" {}

locals {
  name        = "${var.project}-${var.environment}"
  bucket_name = "${local.name}-site-${data.aws_caller_identity.current.account_id}"
}

module "site" {
  source = "../../modules/static-site"

  bucket_name   = local.bucket_name
  force_destroy = true # disposable environment: `terraform destroy` works even with files inside
}

module "github_deploy" {
  source = "../../modules/github-oidc"

  role_name         = "${local.name}-github-deploy"
  github_repository = var.github_repository
  bucket_arn        = module.site.bucket_arn
  distribution_arn  = module.site.distribution_arn
  create_provider   = var.create_oidc_provider
}
