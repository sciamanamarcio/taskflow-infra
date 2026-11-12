# Partial configuration: the bucket and region are passed at init time, e.g.
#   terraform init -backend-config="bucket=<state bucket>" -backend-config="region=us-east-1"
# use_lockfile keeps the state lock in S3 itself, so no DynamoDB table is needed.
terraform {
  backend "s3" {
    key          = "envs/dev/terraform.tfstate"
    encrypt      = true
    use_lockfile = true
  }
}
