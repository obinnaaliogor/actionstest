provider "aws" {
  region = "us-east-2"
}
resource "aws_vpc" "actions" {
  cidr_block = "10.0.0.0/22"

  tags = {
Name = "Demo"
Environment = "Prod"
Division = "account dept"
  }
}
terraform {
  required_version = "~> 1.0"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 3.0" #optional but recommended in production
    }
  }
  backend "s3" {
    bucket = "obinnatfstate-bucket"
    key = "prod/tfstate.tfstate"
    region = "us-east-2"

  }
}