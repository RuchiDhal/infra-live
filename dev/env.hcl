locals {
  environment = "dev"
  aws_profile       = "defalut"
  dynamodb_table    = "terragrunt-dev-locks"
  bucket            = "terragrunt-dev-211"
  aws_main_vpc_name = "vpc-dev"
}