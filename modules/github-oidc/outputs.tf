output "role_arn" {
  description = "ARN of the role to use in the workflow (role-to-assume)."
  value       = aws_iam_role.deploy.arn
}
