terraform {
  backend "s3" {
    bucket = "mprotsenko-demo-terraform-state"
    key = "demo2.tfstate"
    region = "us-west-1"
  }
}

provider "aws" {
  region = "us-west-1"
}

resource "aws_s3_bucket" "demo2_mprotsenko_bucket" {
  region = "us-west-1"
  bucket = "demo2-mprotsenko-bucket"
}