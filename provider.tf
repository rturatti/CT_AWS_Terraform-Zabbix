# My terraform provider
provider "aws" {
  region  = var.my_aws_region
  profile = "default"
  # version = "~> 2.7"
}

# Terraform state file
# -- Push tfstate to S3
terraform {
  backend "s3" {
    profile = "default"
    region  = "us-east-1"
    bucket  = "ct-terraformstate"
    key     = "ct-zabbix.tfstate"
  }
}
