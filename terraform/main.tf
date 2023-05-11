terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.66.1"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "eu-central-1"
}

resource "aws_s3_bucket" "this" {
  bucket = "my-tf-test-bucket-lpnu"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}