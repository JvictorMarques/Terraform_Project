terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.64.0"
    }
  }
  backend "s3" {
    profile = "AdministratorAccess-864981720117"
    bucket  = "estado-bucket"
    region  = "us-east-1"
    key     = "terraform.tfstate"
    encrypt = true
  }

}

provider "aws" {
  profile = "AdministratorAccess-864981720117"
  region  = "us-east-1"
}

resource "aws_s3_bucket" "terraform_state" {
  bucket = var.bucket_state
  lifecycle {
    prevent_destroy = false
  }
}

resource "aws_s3_bucket_versioning" "terraform_state" {
  bucket = aws_s3_bucket.terraform_state.bucket
  versioning_configuration {
    status = "Enabled"
  }
  depends_on = [
    aws_s3_bucket.terraform_state
  ]
}