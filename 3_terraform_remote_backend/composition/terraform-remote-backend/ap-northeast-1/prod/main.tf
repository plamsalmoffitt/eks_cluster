########################################
# AWS Terraform backend composition
########################################

module "terraform_remote_backend" {
  source   = "../../../../infrastructure_modules/terraform_remote_backend"
  env      = var.env
  app_name = var.app_name
  region   = var.region
  tags     = local.tags

  ########################################
  ## Terraform State S3 Bucket
  ########################################
  acl                = var.acl
  force_destroy      = var.force_destroy
  versioning_enabled = var.versioning_enabled

  ## s3 bucket public access block ##
  block_public_policy     = var.block_public_policy
  block_public_acls       = var.block_public_acls
  ignore_public_acls      = var.ignore_public_acls
  restrict_public_buckets = var.restrict_public_buckets


}
