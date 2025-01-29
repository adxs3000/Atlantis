terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"  # Change to your desired AWS region
}

resource "aws_s3_bucket" "my-bucket" {
  bucket = "atlantis-test-bucket-adkd1234"  # Unique bucket name

  tags = {
    Name        = "Atlantis Test Bucket"
    Environment = "Dev"
  }
}

resource "random_string" "suffix" {
  length  = 6
  special = false
  upper   = false
}
