terraform {
  
  backend "s3" {
    bucket = "372530704203-terraform-tfstate"
    key    = "main/dev/terraform.tfstate"
    region = "eu-central-1"
  }

  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.66.1"
    }
  }
}

provider "aws" {
  region = "eu-central-1"
}
