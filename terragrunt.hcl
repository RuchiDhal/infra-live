# Configure Terragrunt to automatically store tfstate files in an S3 bucket
locals {
  environment = read_terragrunt_config(find_in_parent_folders("env.hcl"))
}

remote_state {
  backend = "s3"
  config = {
    bucket         = local.environment.locals.bucket
    key            = "${path_relative_to_include()}//terraform.tfstate"
    region         = "eu-west-1"
    dynamodb_table = local.environment.locals.dynamodb_table
    encrypt        = false
    profile        = local.environment.locals.aws_profile
  }
}

inputs = merge(
  local.environment.locals
)

