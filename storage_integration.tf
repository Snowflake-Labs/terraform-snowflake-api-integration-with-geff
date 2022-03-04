module "storage_integration" {
  source = "Snowflake-Labs/storage-integration/snowflake"

  # General
  prefix = var.prefix
  env    = var.env

  # AWS
  data_bucket_arns                 = var.data_bucket_arns
  snowflake_integration_user_roles = var.snowflake_integration_user_roles

  providers = {
    snowflake.storage_integration = snowflake.storage_integration
    aws                           = aws
  }
}
