terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.27.0"
    }
  }
  backend "s3" {
    bucket = "aws-s3-state-boa01-tfstate"
    key = "dev/boa-24/terraform.tfstate"
    encrypt = false
    region = "us-west-1"
    dynamodb_table = "boa-train24"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}