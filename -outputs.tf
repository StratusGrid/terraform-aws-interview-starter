output "account_id" {
  description = "Account which terraform was run on"
  value       = data.aws_caller_identity.current.account_id
}

output "name_prefix" {
  description = "string to prepend to all resource names"
  value       = var.name_prefix
}

output "name_suffix" {
  description = "string to append to all resource names"
  value       = local.name_suffix
}

output "common_tags" {
  description = "tags which should be applied to all taggable objects"
  value       = local.common_tags
}
