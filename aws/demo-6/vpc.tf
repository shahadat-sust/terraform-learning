resource "aws_vpc" "custom_vpc" {
  cidr_block = "172.31.0.0/16"
  instance_tenancy = "default"
}

resource "aws_subnet" "custom_subnet_apse_1a" {
  availability_zone = "${var.AWS_REGION}a"
  cidr_block = "172.31.1.0/24"
  vpc_id = aws_vpc.custom_vpc.id
}

resource "aws_subnet" "custom_subnet_apse_1b" {
  availability_zone = "${var.AWS_REGION}b"
  cidr_block = "172.31.2.0/24"
  vpc_id = aws_vpc.custom_vpc.id
}

resource "aws_subnet" "custom_subnet_apse_1c" {
  availability_zone = "${var.AWS_REGION}c"
  cidr_block = "172.31.3.0/24"
  vpc_id = aws_vpc.custom_vpc.id
}

