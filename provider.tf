terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.66.0"
    }
  }

  backend "s3" {
    bucket = "vjay-unique"
    key    = "for-each-demo"
    region = "us-east-1"
    dynamodb_table = "vjay-unique-lock"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}