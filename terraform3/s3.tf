terraform {
  backend "s3" {
    bucket = "mprotsenko-demo-terraform-state"
    key = "demo3.tfstate"
    region = "us-west-1"
  }
}

provider "aws" {
  region = "us-west-1"
}

module "s3" {
  source = "s3_module"
  bucket_name = "demo3-mprotsenko-bucket"
}