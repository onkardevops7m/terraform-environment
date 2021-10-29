provider "aws" {
  version = "~> 2.0"
  region  = "us-west-2"
}

terraform {
  backend "s3" {
    bucket = "environment-state-devops"
    key    = "QA/terraform-state"
    region = "us-west-2"
  }
}