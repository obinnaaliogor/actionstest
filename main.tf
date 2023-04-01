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