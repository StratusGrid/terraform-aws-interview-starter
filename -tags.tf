locals {
  common_tags = {
    Environment = var.env_name
    SourceRepo  = var.source_repo
    Developer   = var.developer
    Provisioner = "Terraform"
    Terraform   = "true"
  }
}

