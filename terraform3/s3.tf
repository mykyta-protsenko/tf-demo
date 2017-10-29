//terraform {
//  backend "s3" {
//    bucket = "mprotsenko-demo-terraform-state"
//    key = "demo3.tfstate"
//    region = "us-west-1"
//  }
//}
//
//provider "aws" {
//  region = "us-west-1"
//}
//
//module "s3" {
//  source = "github.com/mykyta-protsenko/tf-demo//terraform3//s3_module"
//  bucket_name = "demo3-mprotsenko-bucket"
//}