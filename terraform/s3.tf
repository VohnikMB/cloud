locals {
  env = "local"
}

resource "aws_s3_bucket" "this" {
  bucket = "my-tf-test-bucket-lpnu-masniak"

  tags = {
    Name        = "My bucket"
    Environment = var.env
  }
}
