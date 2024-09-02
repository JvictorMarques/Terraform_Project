terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.64.0"
    }
  }
}

provider "aws" {
  profile = "AdministratorAccess-864981720117"
  region  = "us-east-1"
}

resource "aws_s3_bucket" "terraform_state" {
  bucket = var.bucket_state
  lifecycle {
    prevent_destroy = true
  }
}