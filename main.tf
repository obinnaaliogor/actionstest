provider "aws" {
  region = "us-east-2"
}
resource "aws_vpc" "actions" {
  cidr_block = "10.0.0.0/22"

  tags = {
Name = "Class30"
Environment = "Prod"
  }
}
terraform {
  backend "s3" {
    bucket = "obinnatfstate-bucket"
    key = "prod/tfstate.tfstate"
    region = "us-east-2"

  }
}