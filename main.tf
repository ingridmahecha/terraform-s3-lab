terraform {
  cloud {
    organization = "terraform290711"

    workspaces {
      name = "lab-s3-terraform"
    }
  }

  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "lab" {
  bucket = "lab-s3-terraform-290711-001"
}

output "bucket_name" {
  value = aws_s3_bucket.lab.bucket
}