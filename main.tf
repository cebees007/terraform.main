provider "aws" {
    region     = "us-west-1"
    access_key = "AKIA3CJ33SKIM3H2XMVB"
    secret_key = "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"
}

resource "aws_vpc" "first-vpc" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "subnet-1" {
  vpc_id     = aws_vpc.first-vpc.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-west-1a"
}